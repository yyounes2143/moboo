.class public final Lcom/facebook/ads/redexgen/X/1o;
.super Lcom/facebook/ads/redexgen/X/BJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/BK;->A00(Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/1o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/BK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 8955
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A00:Lcom/facebook/ads/redexgen/X/BK;

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/BJ;-><init>(Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final A04(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separatorPosition"
        }
    .end annotation

    .line 8956
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public final A05(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 8957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A00:Lcom/facebook/ads/redexgen/X/BK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/BK;->A00:Lcom/facebook/ads/redexgen/X/BZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BJ;->A03:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/BZ;->A08(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
