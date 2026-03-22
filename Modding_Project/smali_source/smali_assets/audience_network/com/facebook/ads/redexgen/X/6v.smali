.class public final Lcom/facebook/ads/redexgen/X/6v;
.super Lcom/facebook/ads/redexgen/X/hL;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hK;->A04()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/iN;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/hK;

.field public final synthetic A02:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hK;Ljava/util/List;Lcom/facebook/ads/redexgen/X/iN;)V
    .locals 0

    .line 20700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6v;->A01:Lcom/facebook/ads/redexgen/X/hK;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6v;->A02:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/iN;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hL;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEH(Lcom/facebook/ads/redexgen/X/iN;)V
    .locals 2

    .line 20701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6v;->A02:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/iN;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20702
    return-void
.end method
