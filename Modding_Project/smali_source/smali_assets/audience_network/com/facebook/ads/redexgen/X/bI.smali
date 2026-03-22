.class public final Lcom/facebook/ads/redexgen/X/bI;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sp;->A0C(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/So;Lcom/facebook/ads/redexgen/X/Sn;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 0

    .line 76842
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/cu;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 76843
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sp;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Sq;

    .line 76844
    .local v1, "event":Lcom/facebook/ads/redexgen/X/Sq;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/cu;

    .line 76845
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->A02()Ljava/lang/String;

    move-result-object v3

    .line 76846
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->A00()I

    move-result v2

    .line 76847
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->A01()Lcom/facebook/ads/redexgen/X/Sw;

    move-result-object v1

    .line 76848
    const/4 v0, 0x0

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sp;->A0B(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;Z)V

    .line 76849
    .end local v1    # "event":Lcom/facebook/ads/redexgen/X/Sq;
    goto :goto_0

    .line 76850
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sp;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76851
    return-void
.end method
