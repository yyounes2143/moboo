.class public final Lcom/facebook/ads/redexgen/X/pb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A4;
    }
.end annotation


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/pb;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/A7;

.field public final A01:Lcom/facebook/ads/redexgen/X/po;

.field public final A02:Lcom/facebook/ads/redexgen/X/pm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3427
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pb;->A03:Lcom/facebook/ads/redexgen/X/pb;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/ps;Lcom/facebook/ads/redexgen/X/pm;Lcom/facebook/ads/redexgen/X/po;)V
    .locals 2

    .line 102959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pb;->A00:Lcom/facebook/ads/redexgen/X/A7;

    .line 102961
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/pb;->A01:Lcom/facebook/ads/redexgen/X/po;

    .line 102962
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/pb;->A02:Lcom/facebook/ads/redexgen/X/pm;

    .line 102963
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-direct {v0, p3, v1}, Lcom/facebook/ads/redexgen/X/A4;-><init>(Lcom/facebook/ads/redexgen/X/pm;Lcom/facebook/ads/redexgen/X/pc;)V

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/ps;->A03(Lcom/facebook/ads/redexgen/X/pt;)V

    .line 102964
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/ps;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/A6;)Lcom/facebook/ads/redexgen/X/pb;
    .locals 7

    .line 102965
    sget-object v0, Lcom/facebook/ads/redexgen/X/pb;->A03:Lcom/facebook/ads/redexgen/X/pb;

    .line 102966
    .local v0, "localsTestInstance":Lcom/facebook/ads/redexgen/X/pb;
    if-eqz v0, :cond_0

    .line 102967
    return-object v0

    .line 102968
    :cond_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/po;

    move-object v2, p0

    invoke-direct {v6, v2}, Lcom/facebook/ads/redexgen/X/po;-><init>(Lcom/facebook/ads/redexgen/X/A7;)V

    .line 102969
    .local v1, "viewpointRegistry":Lcom/facebook/ads/redexgen/X/po;
    new-instance v1, Lcom/facebook/ads/redexgen/X/pm;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bg;->A00:Lcom/facebook/ads/redexgen/X/Bg;

    .line 102970
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v5, p3

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/pm;-><init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/gK;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/po;Landroid/os/Handler;)V

    .line 102971
    .local v2, "viewpointScanner":Lcom/facebook/ads/redexgen/X/pm;
    new-instance v0, Lcom/facebook/ads/redexgen/X/pb;

    invoke-direct {v0, v2, p1, v1, v6}, Lcom/facebook/ads/redexgen/X/pb;-><init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/ps;Lcom/facebook/ads/redexgen/X/pm;Lcom/facebook/ads/redexgen/X/po;)V

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/pr;)V
    .locals 1

    .line 102972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A02:Lcom/facebook/ads/redexgen/X/pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/pm;->A0E(Lcom/facebook/ads/redexgen/X/pr;)V

    .line 102973
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/pp;)V
    .locals 1

    .line 102974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A02:Lcom/facebook/ads/redexgen/X/pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/pm;->A0F(Lcom/facebook/ads/redexgen/X/pp;)V

    .line 102975
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/pa;)V
    .locals 1

    .line 102976
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/pb;->A04(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;)V

    .line 102977
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;)V
    .locals 1

    .line 102978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A00:Lcom/facebook/ads/redexgen/X/A7;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 102979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A01:Lcom/facebook/ads/redexgen/X/po;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/po;->A06(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;)V

    .line 102980
    :goto_0
    return-void

    .line 102981
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A01:Lcom/facebook/ads/redexgen/X/po;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/po;->A05(Lcom/facebook/ads/redexgen/X/pa;)V

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;Lcom/facebook/ads/redexgen/X/pu;)V
    .locals 1

    .line 102982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A00:Lcom/facebook/ads/redexgen/X/A7;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 102983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A01:Lcom/facebook/ads/redexgen/X/po;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/po;->A07(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;Lcom/facebook/ads/redexgen/X/pu;)V

    .line 102984
    :goto_0
    return-void

    .line 102985
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pb;->A01:Lcom/facebook/ads/redexgen/X/po;

    invoke-virtual {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/po;->A08(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)V

    goto :goto_0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)V
    .locals 1

    .line 102986
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/pb;->A05(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;Lcom/facebook/ads/redexgen/X/pu;)V

    .line 102987
    return-void
.end method
