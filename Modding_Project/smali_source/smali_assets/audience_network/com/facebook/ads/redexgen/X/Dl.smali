.class public final Lcom/facebook/ads/redexgen/X/Dl;
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
        "Lcom/facebook/ads/redexgen/X/3Y;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3i;)V
    .locals 0

    .line 34162
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Y;)V
    .locals 2

    .line 34163
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DY;->A00()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0i(I)V

    .line 34164
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/3Y;",
            ">;"
        }
    .end annotation

    .line 34165
    const-class v0, Lcom/facebook/ads/redexgen/X/3Y;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 34166
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dl;->A00(Lcom/facebook/ads/redexgen/X/3Y;)V

    return-void
.end method
