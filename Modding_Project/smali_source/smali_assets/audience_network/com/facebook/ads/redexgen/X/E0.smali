.class public final Lcom/facebook/ads/redexgen/X/E0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtherTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/E0;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:Z

.field public final A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/or;I)V
    .locals 3

    .line 34222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34223
    iget v2, p1, Lcom/facebook/ads/redexgen/X/or;->A0H:I

    const/4 v1, 0x1

    and-int/2addr v2, v1

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/E0;->A00:Z

    .line 34224
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/92;->A0S(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E0;->A01:Z

    .line 34225
    return-void

    .line 34226
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/E0;)I
    .locals 3

    .line 34227
    invoke-static {}, Lcom/facebook/ads/redexgen/X/m4;->A01()Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/E0;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/E0;->A01:Z

    .line 34228
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/E0;->A00:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/E0;->A00:Z

    .line 34229
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    .line 34230
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/m4;->A05()I

    move-result v0

    .line 34231
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 34232
    check-cast p1, Lcom/facebook/ads/redexgen/X/E0;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/E0;->A00(Lcom/facebook/ads/redexgen/X/E0;)I

    move-result v0

    return v0
.end method
