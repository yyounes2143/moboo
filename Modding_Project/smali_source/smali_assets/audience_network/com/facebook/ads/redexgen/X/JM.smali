.class public final Lcom/facebook/ads/redexgen/X/JM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageRegion"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 43778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43779
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JM;->A00:I

    .line 43780
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JM;->A01:I

    .line 43781
    return-void
.end method
