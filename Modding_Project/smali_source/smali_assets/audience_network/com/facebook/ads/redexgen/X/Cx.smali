.class public final Lcom/facebook/ads/redexgen/X/Cx;
.super Lcom/facebook/ads/redexgen/X/Tf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Tf<",
        "Lcom/facebook/ads/redexgen/X/DO;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2Y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2Y;)V
    .locals 0

    .line 33448
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cx;->A00:Lcom/facebook/ads/redexgen/X/2Y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 2

    .line 33449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cx;->A00:Lcom/facebook/ads/redexgen/X/2Y;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2Y;->setVisibility(I)V

    .line 33450
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/DO;",
            ">;"
        }
    .end annotation

    .line 33451
    const-class v0, Lcom/facebook/ads/redexgen/X/DO;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 33452
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Cx;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method
