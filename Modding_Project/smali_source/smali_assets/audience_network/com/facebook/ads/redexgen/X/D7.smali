.class public final Lcom/facebook/ads/redexgen/X/D7;
.super Lcom/facebook/ads/redexgen/X/Tf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Tf<",
        "Lcom/facebook/ads/redexgen/X/3Q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D6;)V
    .locals 0

    .line 33729
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:Lcom/facebook/ads/redexgen/X/D6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 4

    .line 33730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:Lcom/facebook/ads/redexgen/X/D6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D6;->A00(Lcom/facebook/ads/redexgen/X/D6;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33731
    return-void

    .line 33732
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:Lcom/facebook/ads/redexgen/X/D6;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:Lcom/facebook/ads/redexgen/X/D6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:Lcom/facebook/ads/redexgen/X/D6;

    .line 33733
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D6;->A00(Lcom/facebook/ads/redexgen/X/D6;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:Lcom/facebook/ads/redexgen/X/D6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D6;->A00(Lcom/facebook/ads/redexgen/X/D6;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-long v0, v1

    .line 33734
    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/D6;->A03(Lcom/facebook/ads/redexgen/X/D6;J)Ljava/lang/String;

    move-result-object v0

    .line 33735
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/D6;->setText(Ljava/lang/CharSequence;)V

    .line 33736
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/3Q;",
            ">;"
        }
    .end annotation

    .line 33737
    const-class v0, Lcom/facebook/ads/redexgen/X/3Q;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 33738
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/D7;->A00(Lcom/facebook/ads/redexgen/X/3Q;)V

    return-void
.end method
