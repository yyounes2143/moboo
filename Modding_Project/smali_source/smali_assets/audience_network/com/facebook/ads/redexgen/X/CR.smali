.class public final Lcom/facebook/ads/redexgen/X/CR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/eF;->A0G(Lcom/facebook/ads/redexgen/X/eC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/eC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/eF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eF;Lcom/facebook/ads/redexgen/X/eC;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32847
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:Lcom/facebook/ads/redexgen/X/eF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:Lcom/facebook/ads/redexgen/X/eC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ACv(Lcom/facebook/ads/redexgen/X/o0;)V
    .locals 0

    return-void
.end method

.method public final synthetic ACw(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final AEb(Lcom/facebook/ads/redexgen/X/ob;)V
    .locals 0

    .line 32848
    return-void
.end method

.method public final AEd(Lcom/facebook/ads/redexgen/X/od;)V
    .locals 2

    .line 32849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:Lcom/facebook/ads/redexgen/X/eC;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/eF;->A01(Lcom/facebook/ads/redexgen/X/od;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/eC;->AEe(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32850
    return-void
.end method

.method public final AEf(ZI)V
    .locals 1

    .line 32851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:Lcom/facebook/ads/redexgen/X/eC;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/eC;->AEf(ZI)V

    .line 32852
    return-void
.end method

.method public final AFB()V
    .locals 0

    .line 32853
    return-void
.end method

.method public final synthetic AFQ(Lcom/facebook/ads/androidx/media3/common/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2r;->A00(Lcom/facebook/ads/redexgen/X/2s;Lcom/facebook/ads/androidx/media3/common/Timeline;I)V

    return-void
.end method

.method public final AFU(Lcom/facebook/ads/redexgen/X/o6;)V
    .locals 0

    .line 32854
    return-void
.end method
