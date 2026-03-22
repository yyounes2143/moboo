.class public final Lcom/facebook/ads/redexgen/X/hk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NH;->A0A(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/hy;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/hw;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/NG;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/NH;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/dL;

.field public final synthetic A06:Ljava/util/EnumSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2822
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LaTcnwnUfzgLTffZJQ1IPucRbglpEgMo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "12hOZJfgSqwHBnuTqXHxpHxEQ0NbZO7A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dr9pHE3G5odEHWCsCqxBSNpdFpwa86Mh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MDWd5GjifHIGoqp8wS2KmhLcZ8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ozio236b3SA3ZtX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "C3UkekSSOdUqAnfYGByVev7l4a4YpLBv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q070rE4WAmrDPncHn0R1JG2tySYrh7TO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hk;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NH;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/hw;ILcom/facebook/ads/redexgen/X/NG;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85306
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hk;->A04:Lcom/facebook/ads/redexgen/X/NH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hk;->A05:Lcom/facebook/ads/redexgen/X/dL;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/hk;->A01:Lcom/facebook/ads/redexgen/X/hy;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/hk;->A02:Lcom/facebook/ads/redexgen/X/hw;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/hk;->A03:Lcom/facebook/ads/redexgen/X/NG;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/hk;->A06:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()V
    .locals 9

    .line 85307
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A02:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 85308
    return-void

    .line 85309
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hk;->A04:Lcom/facebook/ads/redexgen/X/NH;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hk;->A05:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/hk;->A06:Ljava/util/EnumSet;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/hk;->A02:Lcom/facebook/ads/redexgen/X/hw;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hk;->A02:Lcom/facebook/ads/redexgen/X/hw;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    add-int/lit8 v0, v0, 0x1

    .line 85310
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/hk;->A03:Lcom/facebook/ads/redexgen/X/NG;

    .line 85311
    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/NH;->A07(Lcom/facebook/ads/redexgen/X/NH;Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V

    .line 85312
    return-void
.end method


# virtual methods
.method public final ACF(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 85313
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    if-nez v0, :cond_0

    .line 85314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A03:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/NG;->ACF(Lcom/facebook/ads/AdError;)V

    .line 85315
    :cond_0
    return-void
.end method

.method public final ACG()V
    .locals 4

    .line 85316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 85317
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A01()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A01:Lcom/facebook/ads/redexgen/X/hy;

    .line 85318
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A02:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1y()Ljava/lang/String;

    move-result-object v0

    .line 85319
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->AIU(Ljava/lang/String;Ljava/lang/String;)V

    .line 85320
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    if-nez v0, :cond_1

    .line 85321
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hk;->A03:Lcom/facebook/ads/redexgen/X/NG;

    sget-object v2, Lcom/facebook/ads/redexgen/X/hk;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hk;->A07:[Ljava/lang/String;

    const-string v1, "Mfrds6r17BKRZSfVfcuH4MZ0YR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "cdrsota1fCopt7F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/NG;->ACG()V

    .line 85322
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hk;->A00()V

    .line 85323
    return-void
.end method

.method public final AGo()V
    .locals 1

    .line 85324
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    if-nez v0, :cond_0

    .line 85325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A03:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->AGo()V

    .line 85326
    :cond_0
    return-void
.end method

.method public final AJm()V
    .locals 1

    .line 85327
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:I

    if-nez v0, :cond_0

    .line 85328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hk;->A03:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->AJm()V

    .line 85329
    :cond_0
    return-void
.end method
