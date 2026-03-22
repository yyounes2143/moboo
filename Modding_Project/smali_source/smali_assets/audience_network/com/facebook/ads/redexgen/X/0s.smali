.class public final Lcom/facebook/ads/redexgen/X/0s;
.super Lcom/facebook/ads/redexgen/X/7i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/5S<",
            "Lcom/facebook/ads/redexgen/X/0s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5S;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/5S<",
            "Lcom/facebook/ads/redexgen/X/0s;",
            ">;)V"
        }
    .end annotation

    .line 5993
    .local p1, "owner":Lcom/facebook/ads/redexgen/X/5S;, "Lcom/facebook/ads/androidx/media3/decoder/DecoderOutputBuffer$Owner<Lcom/facebook/ads/androidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7i;-><init>()V

    .line 5994
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0s;->A00:Lcom/facebook/ads/redexgen/X/5S;

    .line 5995
    return-void
.end method


# virtual methods
.method public final A0B()V
    .locals 1

    .line 5996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0s;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/5S;->AGz(Lcom/facebook/ads/redexgen/X/nX;)V

    .line 5997
    return-void
.end method
