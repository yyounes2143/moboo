.class public final Lcom/facebook/ads/redexgen/X/Cz;
.super Lcom/facebook/ads/redexgen/X/Tf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2p;
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
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2p;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2p;)V
    .locals 0

    .line 33458
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 2

    .line 33459
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:Lcom/facebook/ads/redexgen/X/2p;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->setVisibility(I)V

    .line 33460
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

    .line 33461
    const-class v0, Lcom/facebook/ads/redexgen/X/DQ;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 33462
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Cz;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method
