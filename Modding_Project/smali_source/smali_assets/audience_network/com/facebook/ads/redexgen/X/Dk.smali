.class public final Lcom/facebook/ads/redexgen/X/Dk;
.super Lcom/facebook/ads/redexgen/X/Tf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Tf<",
        "Lcom/facebook/ads/redexgen/X/DQ;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3i;)V
    .locals 0

    .line 34154
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 2

    .line 34155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3i;->A0D(Lcom/facebook/ads/redexgen/X/3i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34156
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/3i;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A0E(Lcom/facebook/ads/redexgen/X/3i;Z)Z

    .line 34157
    return-void

    .line 34158
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0d()V

    .line 34159
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/DQ;",
            ">;"
        }
    .end annotation

    .line 34160
    const-class v0, Lcom/facebook/ads/redexgen/X/DQ;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 34161
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dk;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method
