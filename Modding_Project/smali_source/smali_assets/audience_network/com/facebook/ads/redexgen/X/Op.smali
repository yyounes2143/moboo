.class public final Lcom/facebook/ads/redexgen/X/Op;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xc;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/content/DialogInterface;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/content/DialogInterface;)V
    .locals 0

    .line 56509
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 56510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Xc;->A01:Lcom/facebook/ads/redexgen/X/Om;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Om;->A01(Lcom/facebook/ads/redexgen/X/Om;)Lcom/facebook/ads/redexgen/X/ed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Xc;->A01:Lcom/facebook/ads/redexgen/X/Om;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Om;->A01(Lcom/facebook/ads/redexgen/X/Om;)Lcom/facebook/ads/redexgen/X/ed;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Xc;->A01:Lcom/facebook/ads/redexgen/X/Om;

    .line 56512
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Om;->A00(Lcom/facebook/ads/redexgen/X/Om;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/er;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/er;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Xc;->A01:Lcom/facebook/ads/redexgen/X/Om;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Xc;->A00:Landroid/widget/EditText;

    .line 56513
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Om;->A04(Lcom/facebook/ads/redexgen/X/Om;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/er;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/er;

    move-result-object v0

    .line 56514
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/er;->A08()[B

    move-result-object v0

    .line 56515
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/ed;->AGD(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/ec;

    .line 56516
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    .line 56517
    return-void
.end method
