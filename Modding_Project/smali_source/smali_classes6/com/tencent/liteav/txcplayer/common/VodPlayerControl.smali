.class public Lcom/tencent/liteav/txcplayer/common/VodPlayerControl;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::licence"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static native nativeIncrementCheckCount()V
.end method

.method public static native nativeIsCheckCountLEThreshold()Z
.end method

.method public static native nativeSetLicenseFlexibleValid(Z)V
.end method
