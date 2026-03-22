.class public final Lcom/facebook/ads/redexgen/X/Ex;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ev;->A05(Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/US;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/XH;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/cn;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Ev;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ev;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/XH;)V
    .locals 0

    .line 35343
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ex;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ex;->A02:Lcom/facebook/ads/redexgen/X/cn;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ex;->A00:Lcom/facebook/ads/redexgen/X/US;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ex;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Ex;->A01:Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 35344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A03(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0Z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A04:Ljava/lang/String;

    .line 35345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    .line 35346
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A00(Lcom/facebook/ads/redexgen/X/Ev;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A02:Lcom/facebook/ads/redexgen/X/cn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35347
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ex;->A00:Lcom/facebook/ads/redexgen/X/US;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ex;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    .line 35348
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A04(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A01:Lcom/facebook/ads/redexgen/X/XH;

    .line 35349
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 35350
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v0

    .line 35351
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 35352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    .line 35353
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A01(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A02(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 35354
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 35355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A00(Lcom/facebook/ads/redexgen/X/Ev;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A02:Lcom/facebook/ads/redexgen/X/cn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 35356
    :cond_0
    return-void
.end method
