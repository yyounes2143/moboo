.class public final Lcom/facebook/ads/redexgen/X/Dr;
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
        "Lcom/facebook/ads/redexgen/X/DI;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3i;)V
    .locals 0

    .line 34194
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dr;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DI;)V
    .locals 3

    .line 34195
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dr;->A00:Lcom/facebook/ads/redexgen/X/3i;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dr;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0b()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dr;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0b()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0l(II)V

    .line 34196
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/DI;",
            ">;"
        }
    .end annotation

    .line 34197
    const-class v0, Lcom/facebook/ads/redexgen/X/DI;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 34198
    check-cast p1, Lcom/facebook/ads/redexgen/X/DI;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dr;->A00(Lcom/facebook/ads/redexgen/X/DI;)V

    return-void
.end method
