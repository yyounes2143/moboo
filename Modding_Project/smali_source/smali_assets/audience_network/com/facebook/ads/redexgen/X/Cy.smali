.class public final Lcom/facebook/ads/redexgen/X/Cy;
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
        "Lcom/facebook/ads/redexgen/X/3d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2p;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2p;)V
    .locals 0

    .line 33453
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 2

    .line 33454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:Lcom/facebook/ads/redexgen/X/2p;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->setVisibility(I)V

    .line 33455
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/3d;",
            ">;"
        }
    .end annotation

    .line 33456
    const-class v0, Lcom/facebook/ads/redexgen/X/3d;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 33457
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Cy;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method
