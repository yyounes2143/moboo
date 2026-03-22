.class public final Lcom/facebook/ads/redexgen/X/FF;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FD;->A05(Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/US;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/XH;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/cn;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/FD;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/XH;)V
    .locals 0

    .line 35818
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FF;->A03:Lcom/facebook/ads/redexgen/X/FD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FF;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FF;->A02:Lcom/facebook/ads/redexgen/X/cn;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FF;->A00:Lcom/facebook/ads/redexgen/X/US;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/FF;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/FF;->A01:Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 35819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A03:Lcom/facebook/ads/redexgen/X/FD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FD;->A03(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0Z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A04:Ljava/lang/String;

    .line 35820
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A03:Lcom/facebook/ads/redexgen/X/FD;

    .line 35821
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FD;->A00(Lcom/facebook/ads/redexgen/X/FD;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A02:Lcom/facebook/ads/redexgen/X/cn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35822
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FF;->A00:Lcom/facebook/ads/redexgen/X/US;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FF;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A03:Lcom/facebook/ads/redexgen/X/FD;

    .line 35823
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FD;->A04(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A01:Lcom/facebook/ads/redexgen/X/XH;

    .line 35824
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 35825
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v0

    .line 35826
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 35827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A03:Lcom/facebook/ads/redexgen/X/FD;

    .line 35828
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FD;->A01(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A03:Lcom/facebook/ads/redexgen/X/FD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FD;->A02(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 35829
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 35830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A03:Lcom/facebook/ads/redexgen/X/FD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FD;->A00(Lcom/facebook/ads/redexgen/X/FD;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FF;->A02:Lcom/facebook/ads/redexgen/X/cn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 35831
    :cond_0
    return-void
.end method
