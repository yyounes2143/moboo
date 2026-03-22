.class public final Lcom/facebook/ads/redexgen/X/fG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/fF;
    }
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 80896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80897
    iput p1, p0, Lcom/facebook/ads/redexgen/X/fG;->A00:I

    .line 80898
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/redexgen/X/fE;)V
    .locals 0

    .line 80899
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/fG;-><init>(I)V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/fF;
    .locals 2

    .line 80900
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/fF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/fF;-><init>(Lcom/facebook/ads/redexgen/X/fE;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 80901
    iget v0, p0, Lcom/facebook/ads/redexgen/X/fG;->A00:I

    return v0
.end method
