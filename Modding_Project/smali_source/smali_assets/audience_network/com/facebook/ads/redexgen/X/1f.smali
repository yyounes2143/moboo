.class public final Lcom/facebook/ads/redexgen/X/1f;
.super Lcom/facebook/ads/redexgen/X/BI;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/nL;->A01(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/jB;)Lcom/facebook/ads/redexgen/X/1f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/BI<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/jB;

.field public final synthetic A01:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/jB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$unfiltered",
            "val$retainIfTrue"
        }
    .end annotation

    .line 8801
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:Lcom/facebook/ads/redexgen/X/jB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 8802
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8804
    .local v0, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:Lcom/facebook/ads/redexgen/X/jB;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/jB;->A44(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8805
    return-object v1

    .line 8806
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A01()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
