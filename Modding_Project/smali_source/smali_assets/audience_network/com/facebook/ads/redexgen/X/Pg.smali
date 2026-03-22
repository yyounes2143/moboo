.class public final Lcom/facebook/ads/redexgen/X/Pg;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VU;->A0Q(Lcom/facebook/ads/redexgen/X/VR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VR;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1508
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rr4pEtDer0K6hYSMypGI4SVA4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qv2m0fG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2OIR1Yv9Y7RzsB5MK8fjyIRTaeFBsJy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "02JyCSWW55zn1AQ6h7F4FoBumR9MK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PV14KCf6Ep37wllo1HHxqudNmgtveNCD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8xcTKK5W7UNHePnVaLckl2F"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lGpL0wggi73mqN0I3cVtORcNpouSV80j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "84RqxglWV7M6OmuSAB1gnMVf4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pg;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/VR;)V
    .locals 0

    .line 58407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pg;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

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

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x73t
        0x61t
        0x7ct
        0x7ft
        0x70t
        0x70t
        0x7bt
        0x6ct
        0x61t
        0x75t
        0x7bt
        0x67t
        0x12t
        0x33t
        0x7ct
        0x32t
        0x39t
        0x28t
        0x2bt
        0x33t
        0x2et
        0x37t
        0x7ct
        0x3ft
        0x33t
        0x32t
        0x32t
        0x39t
        0x3ft
        0x28t
        0x35t
        0x33t
        0x32t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 9

    .line 58408
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/VU;->A01(Lcom/facebook/ads/redexgen/X/VU;J)J

    .line 58409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XE;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XD;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XD;->A07:Lcom/facebook/ads/redexgen/X/XD;

    if-ne v1, v0, :cond_0

    .line 58410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A0F(Lcom/facebook/ads/redexgen/X/VU;)V

    .line 58411
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 58412
    .local v0, "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/16 v3, 0xd

    const/16 v1, 0x15

    const/16 v0, 0x3e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Pg;->A00(III)Ljava/lang/String;

    move-result-object v7

    .line 58413
    .local v7, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 58414
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58415
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A00(Lcom/facebook/ads/redexgen/X/VU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v4

    .line 58416
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 58417
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 58418
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 58419
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    new-instance v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {v0, v2, v7}, Lcom/facebook/ads/redexgen/X/V1;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0H(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 58420
    return-void

    .line 58421
    .end local v0    # "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v7    # "errorMessage":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T5;->A08(Landroid/content/Context;)V

    .line 58422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rr;->A07(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 58423
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TY;->A00()Lcom/facebook/ads/redexgen/X/TY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58424
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/TY;->A01(Lcom/facebook/ads/redexgen/X/SQ;Z)Lcom/facebook/ads/redexgen/X/Wb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    .line 58425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VR;->A05()Lcom/facebook/ads/redexgen/X/TL;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A7q(Lcom/facebook/ads/redexgen/X/TL;)Ljava/util/Map;

    move-result-object v1

    .line 58426
    .local v0, "staticParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    .line 58427
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/VR;->A0A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 58428
    .local v1, "adRequestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/VU;->A09(Lcom/facebook/ads/redexgen/X/VU;Ljava/util/Map;)Ljava/util/Map;

    .line 58429
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 58430
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_1

    .line 58431
    const/4 v3, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x5c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Pg;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58432
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x3b

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Pg;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58433
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 58434
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58435
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 58436
    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 58437
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58438
    :catch_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    .line 58439
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VR;->A07()Lcom/facebook/ads/redexgen/X/V6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/V6;->A04:Lcom/facebook/ads/redexgen/X/V6;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    .line 58440
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VR;->A07()Lcom/facebook/ads/redexgen/X/V6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/V6;->A06:Lcom/facebook/ads/redexgen/X/V6;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    .line 58441
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VR;->A07()Lcom/facebook/ads/redexgen/X/V6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/V6;->A05:Lcom/facebook/ads/redexgen/X/V6;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    .line 58442
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VR;->A07()Lcom/facebook/ads/redexgen/X/V6;

    move-result-object v0

    if-nez v0, :cond_3

    .line 58443
    .local v2, "shouldCheckSystemHttpAgent":Z
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58444
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 58445
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/ev;->A02(ZLcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/ed;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58446
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A07(Lcom/facebook/ads/redexgen/X/VU;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/facebook/ads/redexgen/X/er;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/er;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58447
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A08(Lcom/facebook/ads/redexgen/X/VU;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/er;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/er;->A08()[B

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58448
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XG;->A00()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/VR;

    .line 58449
    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/VU;->A05(Lcom/facebook/ads/redexgen/X/VU;JLcom/facebook/ads/redexgen/X/VR;)Lcom/facebook/ads/redexgen/X/ee;

    move-result-object v0

    .line 58450
    invoke-interface {v6, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/ed;->AGE(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/ee;)V

    goto :goto_1

    .line 58451
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58452
    :catch_1
    move-exception v0

    .line 58453
    .local v2, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 58454
    .local v3, "adRequestFailed":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 58455
    .local p1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 58456
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    .line 58457
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A00(Lcom/facebook/ads/redexgen/X/VU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v4

    .line 58458
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 58459
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 58460
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 58461
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    const-string v1, "TysUXKeFt8WChM0CalDFmuBH7ELd8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/VU;->A0H(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 58462
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "adRequestFailed":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local p1
    :goto_1
    return-void
.end method
