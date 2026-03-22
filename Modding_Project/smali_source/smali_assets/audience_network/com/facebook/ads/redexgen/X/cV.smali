.class public final Lcom/facebook/ads/redexgen/X/cV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/cX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/My;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Mw;

.field public final A07:Lcom/facebook/ads/redexgen/X/N9;

.field public final A08:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 1

    .line 77968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77969
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/My;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cV;->A01:Lcom/facebook/ads/redexgen/X/My;

    .line 77970
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cV;->A00:I

    .line 77971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cV;->A05:Z

    .line 77972
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A08:Lcom/facebook/ads/redexgen/X/dL;

    .line 77973
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cV;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    .line 77974
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cV;->A07:Lcom/facebook/ads/redexgen/X/N9;

    .line 77975
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/cV;)I
    .locals 0

    .line 77976
    iget p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/Mw;
    .locals 0

    .line 77977
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/My;
    .locals 0

    .line 77978
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A01:Lcom/facebook/ads/redexgen/X/My;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/N9;
    .locals 0

    .line 77979
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A07:Lcom/facebook/ads/redexgen/X/N9;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 77980
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A08:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/cV;)Ljava/lang/String;
    .locals 0

    .line 77981
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/cV;)Ljava/lang/String;
    .locals 0

    .line 77982
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/cV;)Ljava/lang/String;
    .locals 0

    .line 77983
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/cV;)Z
    .locals 0

    .line 77984
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/cV;->A05:Z

    return p0
.end method


# virtual methods
.method public final A09(I)Lcom/facebook/ads/redexgen/X/cV;
    .locals 0

    .line 77985
    iput p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A00:I

    .line 77986
    return-object p0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/My;)Lcom/facebook/ads/redexgen/X/cV;
    .locals 0

    .line 77987
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A01:Lcom/facebook/ads/redexgen/X/My;

    .line 77988
    return-object p0
.end method

.method public final A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/cV;
    .locals 0

    .line 77989
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A04:Ljava/lang/String;

    .line 77990
    return-object p0
.end method

.method public final A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/cV;
    .locals 0

    .line 77991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A02:Ljava/lang/String;

    .line 77992
    return-object p0
.end method

.method public final A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/cV;
    .locals 0

    .line 77993
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A03:Ljava/lang/String;

    .line 77994
    return-object p0
.end method

.method public final A0E(Z)Lcom/facebook/ads/redexgen/X/cV;
    .locals 0

    .line 77995
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A05:Z

    .line 77996
    return-object p0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/cX;
    .locals 2

    .line 77997
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/cX;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/cX;-><init>(Lcom/facebook/ads/redexgen/X/cV;Lcom/facebook/ads/redexgen/X/Fr;)V

    return-object v0
.end method
