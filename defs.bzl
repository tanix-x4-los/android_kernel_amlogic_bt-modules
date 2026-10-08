load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def btusb_module(name, kernel_build):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/broadcom:btusb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/broadcom:Makefile"],
        outs = ["btusb.ko"],
        kernel_build = kernel_build,
    )

def btmtk_usb_module(name, kernel_build):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/mtk:btmtk_usb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/mtk:Makefile"],
        outs = ["btmtk_usb.ko"],
        kernel_build = kernel_build,
    )

def rtk_btusb_module(name, kernel_build):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/realtek:rtk_btusb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/realtek:Makefile"],
        outs = ["rtk_btusb.ko"],
        kernel_build = kernel_build,
    )

def aml_sdio_bt_module(name, kernel_build, deps):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/amlogic:sdio_bt_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/amlogic:Makefile"],
        outs = ["sdio_bt.ko"],
        deps = deps,
        kernel_build = kernel_build,
    )
