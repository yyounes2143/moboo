.class public final Lcom/facebook/ads/redexgen/X/Dm;
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
        "Lcom/facebook/ads/redexgen/X/DJ;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3i;)V
    .locals 0

    .line 34167
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DJ;)V
    .locals 1

    .line 34168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0e()V

    .line 34169
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/DJ;",
            ">;"
        }
    .end annotation

    .line 34170
    const-class v0, Lcom/facebook/ads/redexgen/X/DJ;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 34171
    check-cast p1, Lcom/facebook/ads/redexgen/X/DJ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dm;->A00(Lcom/facebook/ads/redexgen/X/DJ;)V

    return-void
.end method
