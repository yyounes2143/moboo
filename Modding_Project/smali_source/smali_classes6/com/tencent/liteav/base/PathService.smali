.class public abstract Lcom/tencent/liteav/base/PathService;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field public static final DIR_MODULE:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native nativeOverride(ILjava/lang/String;)V
.end method

.method public static override(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/liteav/base/PathService;->nativeOverride(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
