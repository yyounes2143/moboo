.class public Lcom/tencent/liteav/videobase/utils/YUVReadTools;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
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

.method public static native nativeReadYUVPlanesForByteArray(II[B)V
.end method

.method public static native nativeReadYUVPlanesForByteBuffer(IILjava/nio/ByteBuffer;)V
.end method
