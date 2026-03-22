.class public final Lcom/facebook/ads/redexgen/X/Dp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "NEW_CLASS"
    }
    value = "Encapsulate error info from subtitle decoder"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleDecoderErrorInfo"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/or;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/or;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 34190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34191
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 34192
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dp;->A01:Ljava/lang/Throwable;

    .line 34193
    return-void
.end method
