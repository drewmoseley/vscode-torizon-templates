# ARGUMENTS --------------------------------------------------------------------
##
# Base container version
##
ARG SDK_BASE_VERSION=0.13.0
ARG BASE_VERSION=4

##
# Board architecture
##
ARG IMAGE_ARCH=

##
# Directory of the application inside container
##
ARG APP_ROOT=


# BUILD ------------------------------------------------------------------------
FROM kassany/bookworm-ziglang:${SDK_BASE_VERSION} AS build

ARG APP_ROOT
ARG IMAGE_ARCH

RUN apt-get update && \
    apt-get install -y \
    # ADD YOUR PACKAGES HERE
# DO NOT REMOVE THIS LABEL: this is used for VS Code automation
    # __torizon_packages_build_start__
    # __torizon_packages_build_end__
# DO NOT REMOVE THIS LABEL: this is used for VS Code automation
    && \
    apt-get clean && apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*


# default linux-libc: host - glibc (most), cross-compilation - musl (static)
# zig pure-code (no ffi), no need libc linking

# for glibc choose version:
# e.g.: -Dtarget=$TARGET-gnu.2.20 (my host has 2.36 [default], but my target use old version)
# for cross-compilation to glibc, use minimum version (2.19) supported.

# C++: zig uses llvm-libcxx/abi + llvm-unwind on almost all (LLVM)targets. [builtin static-linking]

COPY . ${APP_ROOT}
WORKDIR ${APP_ROOT}

# Remove the code from the debug builds, inside this container, to build the
# release version from a clean build
RUN rm -rf ${APP_ROOT}/target

# zig optimizers:
# (Debug | ReleaseSafe) w/ dbg-info + runtime stacktrace (compiler safety),
# (ReleaseSmall | ReleaseFast) no runtime stacktrace (undefined & fast)
RUN if [ "$IMAGE_ARCH" = "arm64" ] ; then \
        zig build -Doptimize=ReleaseSmall -Dtarget=aarch64-linux-gnu --summary all -freference-trace ; \
    elif [ "$IMAGE_ARCH" = "armhf" ] ; then \
        zig build -Doptimize=ReleaseSmall -Dtarget=arm-linux-gnu --summary all -freference-trace ; \
    elif [ "$IMAGE_ARCH" = "amd64" ] ; then \
        zig build -Doptimize=ReleaseSmall -Dtarget=x86_64-linux-gnu --summary all -freference-trace ; \
    fi

RUN mkdir -p target/deploy && \
    if [ "$IMAGE_ARCH" = "arm64" ] ; then \
        cp -r zig-out/aarch64/ReleaseSmall/bin/* target/deploy ; \
    elif [ "$IMAGE_ARCH" = "armhf" ] ; then \
        cp -r zig-out/arm/ReleaseSmall/bin/* target/deploy ; \
    elif [ "$IMAGE_ARCH" = "amd64" ] ; then \
        cp zig-out/x86_64/ReleaseSmall/bin/$APP_EXECUTABLE target/deploy ; \
    fi

# BUILD ------------------------------------------------------------------------

# DEPLOY ------------------------------------------------------------------------
FROM --platform=linux/${IMAGE_ARCH} commontorizon/debian:${BASE_VERSION} AS deploy

ARG IMAGE_ARCH
ARG APP_ROOT

RUN apt-get -y update && apt-get install -y --no-install-recommends \
# DO NOT REMOVE THIS LABEL: this is used for VS Code automation
    # __torizon_packages_prod_start__
    # __torizon_packages_prod_end__
# DO NOT REMOVE THIS LABEL: this is used for VS Code automation
	&& apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

# Copy the application compiled in the build step to the $APP_ROOT directory
# path inside the container, where $APP_ROOT is the torizon_app_root
# configuration defined in settings.json
COPY --from=build ${APP_ROOT}/target/deploy/__change__ ${APP_ROOT}/__change__

# "cd" (enter) into the APP_ROOT directory
WORKDIR ${APP_ROOT}

# Command executed in runtime when the container starts
CMD ["./__change__"]

# DEPLOY ------------------------------------------------------------------------
