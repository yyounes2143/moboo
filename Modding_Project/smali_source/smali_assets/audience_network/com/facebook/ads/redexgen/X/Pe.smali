.class public final Lcom/facebook/ads/redexgen/X/Pe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ee;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VU;->A03(JLcom/facebook/ads/redexgen/X/VR;)Lcom/facebook/ads/redexgen/X/Pe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VR;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/VU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1507
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vUQacvUb1jgaOB1nXCILUaEr4ItZ5QEs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ozPzI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iemFS7qx3ItQSdDQeBrvuJ9y9CMkfIqY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EwROMxnfRd6F7268i4EpvPtVg3hQf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qVu8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3RxrE6NsEsLt8TXu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/VR;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58341
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/VR;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pe;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        0x50t
        0x5t
        0x57t
        0x51t
        0x3t
        0x7t
        0x0t
        0x39t
        0x6ct
        0x68t
        0x3ft
        0x68t
        0x39t
        0x3bt
        0x2ct
        0x35t
        0x29t
        0x28t
        0x23t
        0x1et
        0x5t
        0x3t
        0x16t
        0x12t
        0xft
        0x9t
        0x8t
        0x5ct
        0x46t
        0x4et
        0x78t
        0x6ft
        0x6bt
        0x78t
        0x6ft
        0x3dt
        0x78t
        0x6ft
        0x6ft
        0x72t
        0x6ft
        0x3dt
        0x72t
        0x7et
        0x7et
        0x68t
        0x6ft
        0x6ft
        0x78t
        0x79t
        0x7ct
        0x4at
        0x5dt
        0x59t
        0x4at
        0x5dt
        0xft
        0x5dt
        0x4at
        0x5ft
        0x43t
        0x46t
        0x4at
        0x4bt
        0xft
        0x5ct
        0x5at
        0x4ct
        0x4ct
        0x4at
        0x5ct
        0x5ct
        0x49t
        0x5at
        0x43t
        0x43t
        0x56t
        0x3ft
        0x3et
        0x13t
        0x3ft
        0x3dt
        0x20t
        0x3ct
        0x35t
        0x24t
        0x35t
        0x10t
        0x11t
        0x3at
        0xdt
        0xdt
        0x10t
        0xdt
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/eq;)V
    .locals 13

    .line 58342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/VR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VQ;->A06(Lcom/facebook/ads/redexgen/X/VR;)V

    .line 58343
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/eq;->A00()Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v0

    .line 58344
    .local v0, "response":Lcom/facebook/ads/redexgen/X/ec;
    if-eqz v0, :cond_1

    .line 58345
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ec;->A6v()Ljava/lang/String;

    move-result-object v7

    .line 58346
    .local v1, "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    .line 58347
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A04(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:J

    invoke-virtual {v3, v2, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/VV;->A07(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/VX;

    move-result-object v2

    .line 58348
    .local v2, "serverResponse":Lcom/facebook/ads/redexgen/X/VX;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/VX;->A01()Lcom/facebook/ads/redexgen/X/VW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/VW;->A03:Lcom/facebook/ads/redexgen/X/VW;

    if-ne v1, v0, :cond_1

    .line 58349
    check-cast v2, Lcom/facebook/ads/redexgen/X/PV;

    .line 58350
    .local v3, "serverResponseError":Lcom/facebook/ads/redexgen/X/PV;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PV;->A04()Ljava/lang/String;

    move-result-object v3

    .line 58351
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PV;->A03()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 58352
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    .line 58353
    .local v5, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    if-nez v3, :cond_0

    .line 58354
    .local v6, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 58355
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    .line 58356
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A00(Lcom/facebook/ads/redexgen/X/VU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v4

    .line 58357
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 58358
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 58359
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 58360
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0H(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V

    goto :goto_1

    .line 58361
    :cond_0
    move-object v7, v3

    goto :goto_0

    .line 58362
    :goto_1
    return-void
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58363
    .end local v0    # "response":Lcom/facebook/ads/redexgen/X/ec;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "serverResponse":Lcom/facebook/ads/redexgen/X/VX;
    .end local v3    # "serverResponseError":Lcom/facebook/ads/redexgen/X/PV;
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v5    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v6    # "finalErrMessage":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 58364
    .local v0, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/eq;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 58365
    .local v7, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 58366
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    .line 58367
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A00(Lcom/facebook/ads/redexgen/X/VU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v5

    .line 58368
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 58369
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 58370
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pe;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A04:[Ljava/lang/String;

    const-string v1, "NZ18w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 58371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0H(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 58372
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58373
    .end local v0    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v7    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 58374
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 58375
    .local v1, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/eq;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 58376
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 58377
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    .line 58378
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A00(Lcom/facebook/ads/redexgen/X/VU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v8

    .line 58379
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xf

    const/16 v1, 0xf

    const/16 v0, 0x1e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58380
    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 58381
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v12

    .line 58382
    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 58383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0H(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 58384
    return-void
.end method


# virtual methods
.method public final ACo(Lcom/facebook/ads/redexgen/X/ec;)V
    .locals 5

    const/16 v2, 0x33

    const/16 v1, 0x1b

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/4 v1, 0x7

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4e

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58385
    if-eqz p1, :cond_2

    .line 58386
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ec;->A6v()Ljava/lang/String;

    move-result-object v4

    .line 58387
    .local v0, "response":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A02(Landroid/content/Context;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A04:[Ljava/lang/String;

    const-string v1, "kblvpkFa8oUK1ItVGqcsW93nH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-lez v3, :cond_1

    .line 58388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/W2;->A0C(Ljava/lang/String;)V

    .line 58389
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/VR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VQ;->A06(Lcom/facebook/ads/redexgen/X/VR;)V

    .line 58390
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/VR;

    invoke-static {v3, v4, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0K(Lcom/facebook/ads/redexgen/X/VU;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V

    .line 58391
    .end local v0    # "response":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final ADC(Ljava/lang/Exception;)V
    .locals 9

    const/16 v2, 0x1e

    const/16 v1, 0x15

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x58

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58392
    const-class v1, Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58393
    check-cast p1, Lcom/facebook/ads/redexgen/X/eq;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pe;->A02(Lcom/facebook/ads/redexgen/X/eq;)V

    .line 58394
    .end local v0
    .end local v7
    :goto_0
    return-void

    .line 58395
    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 58396
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 58397
    .local v7, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 58398
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    .line 58399
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VU;->A00(Lcom/facebook/ads/redexgen/X/VU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v4

    .line 58400
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 58401
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 58402
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 58403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:Lcom/facebook/ads/redexgen/X/VU;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0H(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V

    goto :goto_0
.end method
