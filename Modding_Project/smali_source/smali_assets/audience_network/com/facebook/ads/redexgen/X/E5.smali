.class public abstract Lcom/facebook/ads/redexgen/X/E5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/E4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/redexgen/X/E5<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/or;

.field public final A03:Lcom/facebook/ads/redexgen/X/oH;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/oH;I)V
    .locals 1

    .line 34515
    .local p0, "this":Lcom/facebook/ads/redexgen/X/E5;, "Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34516
    iput p1, p0, Lcom/facebook/ads/redexgen/X/E5;->A00:I

    .line 34517
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/E5;->A03:Lcom/facebook/ads/redexgen/X/oH;

    .line 34518
    iput p3, p0, Lcom/facebook/ads/redexgen/X/E5;->A01:I

    .line 34519
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/oH;->A08(I)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 34520
    return-void
.end method


# virtual methods
.method public abstract A08()I
.end method

.method public abstract A09(Lcom/facebook/ads/redexgen/X/E5;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
