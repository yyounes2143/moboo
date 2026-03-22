.class public final Lcom/facebook/ads/redexgen/X/Ld;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewListenerImpl"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1326
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BHXiYjXxfgjD7yDB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kPfw5HKETqo8dV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SlBKzsC69frNfTspgJs5v90302jxH173"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0t7u2eeKUCj5gcxeWZIOCTpidMAeGJtt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hTXrvsDVbOi3Q9xrUBZOJj7T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iLbLRTjnBQIJ87KFXaIFUijyWt7EPIGc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0utayShxEdwMeaV3UZeoWviAuyaBWRmj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gyVOCm6F1v6TZALkbG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ld;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 51100
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/Lu;)V
    .locals 0

    .line 51101
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ld;-><init>(Lcom/facebook/ads/redexgen/X/Lc;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ld;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x17t
        0x9t
        0x16t
        0x7t
        0x10t
        0xdt
        0x7t
        0xft
    .end array-data
.end method


# virtual methods
.method public final ACt()V
    .locals 5

    .line 51102
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0T(Lcom/facebook/ads/redexgen/X/Lc;ZLjava/lang/String;)V

    .line 51103
    return-void
.end method

.method public final ADW()V
    .locals 4

    .line 51104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0e(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->ADp()V

    .line 51106
    return-void

    .line 51107
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A03(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51109
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51110
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0C(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51111
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0C(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 51112
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v0

    .line 51113
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 51114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51115
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A8d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 51116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51117
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 51118
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 51119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51120
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0t()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 51121
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 51123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A01(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->ADo()V

    .line 51125
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A02:[Ljava/lang/String;

    const-string v1, "GzK3XL6hk7idJD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lc;->A06(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A88()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 51126
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE2()V
    .locals 2

    .line 51127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 51128
    return-void
.end method

.method public final AFw()V
    .locals 2

    .line 51129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ld;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    const/16 v0, 0xf

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->ACf(I)V

    .line 51130
    return-void
.end method
