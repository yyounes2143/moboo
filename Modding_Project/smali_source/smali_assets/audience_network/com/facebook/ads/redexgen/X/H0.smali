.class public final Lcom/facebook/ads/redexgen/X/H0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZY;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4K;->A0l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 750
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lymitVL5Elx23yNuagrdcc1tj4byFzuO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OtHhm4I6MY8qhok47NcALtT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GJmhN4rXhrf709OMeDU9UKBK4KfDlX2Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UKN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ioCWBc07RK8NAgZ7uqzQ2Ov99bHrMaFb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vsb8Ufoa8H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zp4FcHB1hqlJdpy7ZALmHMQwB62WRf78"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qbR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H0;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H0;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 38909
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/H0;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x66

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
    .locals 4

    const/16 v3, 0x13

    sget-object v1, Lcom/facebook/ads/redexgen/X/H0;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/H0;->A02:[Ljava/lang/String;

    const-string v1, "68tvMXLM0DzUKrc9PEEpmru8eIlurAzh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "oZlS45uLmtttWs7KR8Y8sKnmk93hftbi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/H0;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x33t
        0x31t
        0x23t
        0x30t
        0x1dt
        0x2ct
        0x1ft
        0x34t
        0x27t
        0x25t
        0x1ft
        0x32t
        0x27t
        0x2dt
        0x2ct
        0x1dt
        0x27t
        0x1ft
        0x20t
    .end array-data
.end method


# virtual methods
.method public final AES(Ljava/lang/String;)V
    .locals 2

    .line 38910
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A10(Lcom/facebook/ads/redexgen/X/4K;Z)Z

    .line 38911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0B(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0B(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 38913
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0B(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 38914
    return-void
.end method

.method public final AEU(Ljava/lang/String;)V
    .locals 4

    .line 38915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A10(Lcom/facebook/ads/redexgen/X/4K;Z)Z

    .line 38916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0B(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 38917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0A(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0A(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZH;->setUrl(Ljava/lang/String;)V

    .line 38919
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0y(Lcom/facebook/ads/redexgen/X/4K;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A02(Lcom/facebook/ads/redexgen/X/4K;)I

    move-result v0

    if-le v0, v2, :cond_1

    .line 38920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A12(Lcom/facebook/ads/redexgen/X/4K;Z)Z

    .line 38921
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0h(Lcom/facebook/ads/redexgen/X/4K;Ljava/lang/String;)V

    .line 38922
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    sget-object v1, Lcom/facebook/ads/redexgen/X/H0;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/H0;->A02:[Ljava/lang/String;

    const-string v1, "Ijw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "65M"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4K;->A03(Lcom/facebook/ads/redexgen/X/4K;)I

    .line 38923
    return-void
.end method

.method public final AEq(I)V
    .locals 1

    .line 38924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0w(Lcom/facebook/ads/redexgen/X/4K;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0B(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0B(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 38926
    :cond_0
    return-void
.end method

.method public final AEt(Ljava/lang/String;)V
    .locals 1

    .line 38927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0A(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0A(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/ZH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZH;->setTitle(Ljava/lang/String;)V

    .line 38929
    :cond_0
    return-void
.end method

.method public final AEw()V
    .locals 2

    .line 38930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0B:Lcom/facebook/ads/redexgen/X/Xn;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->ACf(I)V

    .line 38931
    return-void
.end method
