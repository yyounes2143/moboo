.class public abstract Lcom/facebook/ads/redexgen/X/GB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GA;,
        Lcom/facebook/ads/androidx/media3/extractor/AacUtil$AacAudioObjectType;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I

.field public static final A03:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 707
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jnpQs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "68vQr4mYnLI0oxp3WZBPcyc6w04l8sdO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1OtBqA6VhuQLpqBNtIteBoMpw2BUtlZT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iBOJpCpDP8DiwQrVeW3OV9Em66L9h1f8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Xaj0HtPMuTBdCp8NFbjtiHIpdpZCFdAK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i4DAEtymK6yFJNiO2QALezQZgNrDh5qR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4Bsy9O0lknqqP9xR2TNdH0U1zi1weR0A"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FgP5ewPOxCae6ADOyhugLxvte5BfjSLb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GB;->A05()V

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GB;->A03:[I

    .line 708
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GB;->A02:[I

    return-void

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4I;)I
    .locals 2

    .line 37057
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37058
    .local v0, "audioObjectType":I
    const/16 v0, 0x1f

    if-ne v1, v0, :cond_0

    .line 37059
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x20

    .line 37060
    :cond_0
    return v1
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4I;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 37061
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37062
    .local v0, "frequencyIndex":I
    const/16 v0, 0xf

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    .line 37063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4I;->A01()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37064
    :cond_0
    const/16 v0, 0xd

    if-ge v1, v0, :cond_3

    .line 37065
    sget-object v0, Lcom/facebook/ads/redexgen/X/GB;->A03:[I

    aget v0, v0, v1

    goto :goto_0

    .line 37066
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const-string v1, "q0W1UZuAU1h4xSNvnmv6o4fLVDdZ81si"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "TmcMI11py7mWue9QV51Oyh4sKPsH3Jhr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x18

    if-lt v4, v0, :cond_2

    .line 37067
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 37068
    .local v1, "samplingFrequency":I
    .restart local v1    # "samplingFrequency":I
    :goto_0
    return v0

    .line 37069
    .end local v1    # "samplingFrequency":I
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 37070
    .end local v1
    :cond_3
    const/16 v2, 0x1c

    const/16 v1, 0x29

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4I;Z)Lcom/facebook/ads/redexgen/X/GA;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 37071
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GB;->A00(Lcom/facebook/ads/redexgen/X/4I;)I

    move-result v4

    .line 37072
    .local v0, "audioObjectType":I
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GB;->A01(Lcom/facebook/ads/redexgen/X/4I;)I

    move-result v5

    .line 37073
    .local v1, "sampleRateHz":I
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v6

    .line 37074
    .local v3, "channelConfiguration":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9f

    const/16 v1, 0x8

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37075
    .local v4, "codecs":Ljava/lang/String;
    const/4 v0, 0x5

    if-eq v4, v0, :cond_0

    const/16 v0, 0x1d

    if-ne v4, v0, :cond_1

    .line 37076
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GB;->A01(Lcom/facebook/ads/redexgen/X/4I;)I

    move-result v5

    .line 37077
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GB;->A00(Lcom/facebook/ads/redexgen/X/4I;)I

    move-result v4

    .line 37078
    const/16 v0, 0x16

    if-ne v4, v0, :cond_1

    .line 37079
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v6

    .line 37080
    :cond_1
    if-eqz p1, :cond_3

    .line 37081
    packed-switch v4, :pswitch_data_0

    .line 37082
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6a

    const/16 v1, 0x1f

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 37083
    :pswitch_1
    invoke-static {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/GB;->A06(Lcom/facebook/ads/redexgen/X/4I;II)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37084
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const-string v1, "3cbQZ4WWsbXwvX2zvxOiUlmwqxsyxREi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "nPAxNfqqgI9TB5NmScWQIj27S1nluV3e"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    packed-switch v4, :pswitch_data_1

    .line 37085
    .end local v5
    :cond_3
    :goto_0
    :pswitch_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/GB;->A02:[I

    aget v2, v0, v6

    .line 37086
    .local v2, "channelCount":I
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq v2, v0, :cond_4

    .line 37087
    new-instance v0, Lcom/facebook/ads/redexgen/X/GA;

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/GA;-><init>(IILjava/lang/String;Lcom/facebook/ads/redexgen/X/G8;)V

    return-object v0

    .line 37088
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v4

    .line 37089
    .local v5, "epConfig":I
    if-eq v4, v0, :cond_5

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    goto :goto_0

    .line 37090
    :cond_4
    invoke-static {v1, v1}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 37091
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x89

    const/16 v1, 0x16

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static A03([B)Lcom/facebook/ads/redexgen/X/GA;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 37092
    new-instance v1, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A02(Lcom/facebook/ads/redexgen/X/4I;Z)Lcom/facebook/ads/redexgen/X/GA;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GB;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xa7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GB;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0xat
        -0xat
        -0x8t
        -0x2bt
        0x1dt
        0x1at
        0x16t
        0x19t
        0x1at
        0x27t
        -0x2bt
        0x1et
        0x23t
        0x28t
        0x2at
        0x1bt
        0x1bt
        0x1et
        0x18t
        0x1et
        0x1at
        0x23t
        0x29t
        -0x2bt
        0x19t
        0x16t
        0x29t
        0x16t
        -0xdt
        -0xdt
        -0xbt
        -0x2et
        0x1at
        0x17t
        0x13t
        0x16t
        0x17t
        0x24t
        -0x2et
        0x29t
        0x24t
        0x21t
        0x20t
        0x19t
        -0x2et
        0x5t
        0x13t
        0x1ft
        0x22t
        0x1et
        0x1bt
        0x20t
        0x19t
        -0x2et
        -0x8t
        0x24t
        0x17t
        0x23t
        0x27t
        0x17t
        0x20t
        0x15t
        0x2bt
        -0x2et
        -0x5t
        0x20t
        0x16t
        0x17t
        0x2at
        0x5t
        0x25t
        0x27t
        0x19t
        0x38t
        0x2dt
        0x30t
        0x10t
        0x29t
        0x20t
        0x33t
        0x2bt
        0x20t
        0x1et
        0x2ft
        0x20t
        0x1ft
        -0x25t
        0x21t
        0x2dt
        0x1ct
        0x28t
        0x20t
        0x7t
        0x20t
        0x29t
        0x22t
        0x2ft
        0x23t
        0x1t
        0x27t
        0x1ct
        0x22t
        -0x25t
        -0x8t
        -0x25t
        -0x14t
        -0x8t
        0x11t
        0x16t
        0x18t
        0x13t
        0x13t
        0x12t
        0x15t
        0x17t
        0x8t
        0x7t
        -0x3dt
        0x4t
        0x18t
        0x7t
        0xct
        0x12t
        -0x3dt
        0x12t
        0x5t
        0xdt
        0x8t
        0x6t
        0x17t
        -0x3dt
        0x17t
        0x1ct
        0x13t
        0x8t
        -0x23t
        -0x3dt
        0x44t
        0x5dt
        0x62t
        0x64t
        0x5ft
        0x5ft
        0x5et
        0x61t
        0x63t
        0x54t
        0x53t
        0xft
        0x54t
        0x5ft
        0x32t
        0x5et
        0x5dt
        0x55t
        0x58t
        0x56t
        0x29t
        0xft
        -0x13t
        -0x10t
        -0x4ct
        -0x1ft
        -0x52t
        -0x4ct
        -0x50t
        -0x52t
    .end array-data
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4I;II)V
    .locals 4

    .line 37093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    .line 37094
    .local v0, "frameLengthFlag":Z
    if-eqz v0, :cond_0

    .line 37095
    const/16 v2, 0x45

    const/4 v1, 0x7

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4c

    const/16 v1, 0x1e

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 37096
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    .line 37097
    .local v1, "dependsOnCoreDecoder":Z
    if-eqz v0, :cond_1

    .line 37098
    const/16 v3, 0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const-string v1, "v2arTuVBFpHRdd6zD5uQKVaL6J866891"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "F7KamgaQFU4osqLd0R7CHRmLJ4QhMqsw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37099
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v3

    .line 37100
    .local v2, "extensionFlag":Z
    if-eqz p2, :cond_8

    .line 37101
    const/4 v0, 0x6

    const/16 v2, 0x14

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_3

    .line 37102
    :cond_2
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37103
    :cond_3
    if-eqz v3, :cond_7

    .line 37104
    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    .line 37105
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37106
    :cond_4
    const/16 v0, 0x11

    if-eq p1, v0, :cond_5

    const/16 v0, 0x13

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_5

    const/16 v0, 0x17

    if-ne p1, v0, :cond_6

    .line 37107
    :cond_5
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37108
    :cond_6
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/GB;->A01:[Ljava/lang/String;

    const-string v1, "QrL8Tr8yy4gY8AXmFxmkTTkkR7JmfqMW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "IjkFi7C6bNI16jdHGSbHtjLd4dsdDQNH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37109
    :cond_7
    return-void

    .line 37110
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(III)[B
    .locals 3

    .line 37111
    const/4 v0, 0x2

    new-array v2, v0, [B

    .line 37112
    .local v0, "specificConfig":[B
    shl-int/lit8 v0, p0, 0x3

    and-int/lit16 v1, v0, 0xf8

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x7

    or-int/2addr v1, v0

    int-to-byte v1, v1

    const/4 v0, 0x0

    aput-byte v1, v2, v0

    .line 37113
    shl-int/lit8 v0, p1, 0x7

    and-int/lit16 v1, v0, 0x80

    shl-int/lit8 v0, p2, 0x3

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v1, v0

    int-to-byte v1, v1

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    .line 37114
    return-object v2
.end method
