.class public abstract Lcom/facebook/ads/redexgen/X/H8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/H7;,
        Lcom/facebook/ads/redexgen/X/H5;,
        Lcom/facebook/ads/redexgen/X/H4;,
        Lcom/facebook/ads/redexgen/X/H6;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 751
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AQUfun8uWtpAPz6T54JXA8DVdz19i7cg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A9xQ060X7I53O0IPhfx7pChTdPn89BVs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HA6OUY8aFXslM4giueBriDg2S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9RrkKnX7ioGd8UIKmUAG7ayOJ1mW6fCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mjtW7HF4JFIVQBQAuWhSkP1cuiqQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mMlJtFouJ3Md3SAWQWV0HJ1iYftjtiDS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7UUPgjEseHhf3IW21ENlLsXr9tr9mert"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H8;->A08()V

    return-void
.end method

.method public static A00(I)I
    .locals 1

    .line 39022
    const/4 v0, 0x0

    .line 39023
    .local v0, "val":I
    :goto_0
    if-lez p0, :cond_0

    .line 39024
    add-int/lit8 v0, v0, 0x1

    .line 39025
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 39026
    :cond_0
    return v0
.end method

.method public static A01(JJ)J
    .locals 6

    .line 39027
    long-to-double v4, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v0, v2

    return-wide v0
.end method

.method public static A02(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;"
        }
    .end annotation

    .line 39028
    .local v8, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39029
    .local v0, "metadataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    const/4 v7, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 39030
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 39031
    .local v2, "vorbisComment":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 39032
    .local v3, "keyAndValue":[Ljava/lang/String;
    array-length v9, v6

    const/4 v3, 0x2

    const/16 v2, 0x55

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v5

    if-eq v9, v3, :cond_0

    .line 39033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/16 v1, 0x20

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 39034
    .end local v2    # "vorbisComment":Ljava/lang/String;
    .end local v3    # "keyAndValue":[Ljava/lang/String;
    .end local v4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39035
    :cond_0
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "IFt3u6Tbn0k1mtPtGSJYRwNJh6dv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget-object v3, v6, v4

    const/16 v2, 0x3f

    const/16 v1, 0x16

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 39036
    :try_start_0
    aget-object v0, v6, v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 39037
    .local v4, "decoded":[B
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39038
    :catch_0
    move-exception v3

    .line 39039
    .local v4, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x21

    const/16 v1, 0x1e

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39040
    .end local v4    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 39041
    :cond_1
    aget-object v2, v6, v4

    aget-object v1, v6, v0

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/vorbis/VorbisComment;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/vorbis/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39042
    .local v4, "entry":Lcom/facebook/ads/androidx/media3/extractor/metadata/vorbis/VorbisComment;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39043
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v8}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39044
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v1

    const v0, 0x564342

    const/4 v3, 0x0

    if-ne v1, v0, :cond_d

    .line 39045
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v10

    .line 39046
    .local v1, "dimensions":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v11

    .line 39047
    .local v0, "entries":I
    new-array v12, v11, [J

    .line 39048
    .local v2, "lengthMap":[J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v14

    .line 39049
    .local v10, "isOrdered":Z
    const/4 v5, 0x5

    const/4 v2, 0x1

    if-nez v14, :cond_4

    .line 39050
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v9

    .line 39051
    .local v6, "isSparse":Z
    const/4 v4, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v12

    if-ge v4, v0, :cond_6

    .line 39052
    if-eqz v9, :cond_2

    .line 39053
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39054
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v12, v4

    .line 39055
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39056
    :cond_0
    const-wide/16 v7, 0x0

    sget-object v6, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x0

    aget-object v6, v6, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v6, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "HkUiXrMYXoP7dmmSwm7TlUKenEWhRSa7"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "g3UzzRsN8l9NwZbA9Pl4zDU4WOGu2UFV"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    aput-wide v7, v12, v4

    goto :goto_1

    .line 39057
    :cond_2
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v6, v0

    const/4 v0, 0x4

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v6, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "YIXxF7uzVQ2KRDIuTFnKuNVMBeAy43Wm"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const-string v1, "ZNrvF1xji8SwPYIxx9WGKrLEtje0Ya68"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    add-int/2addr v7, v2

    int-to-long v0, v7

    aput-wide v0, v12, v4

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "PN1PQj6gHBTdVMYKSOEyBSZrD"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    add-int/2addr v7, v2

    int-to-long v0, v7

    aput-wide v0, v12, v4

    goto :goto_1

    .line 39058
    :cond_4
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v7

    add-int/2addr v7, v2

    .line 39059
    .local v4, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v12

    if-ge v6, v0, :cond_6

    .line 39060
    sub-int v0, v11, v6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v5

    .line 39061
    .local v7, "num":I
    const/4 v4, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v4, v5, :cond_5

    array-length v0, v12

    if-ge v6, v0, :cond_5

    .line 39062
    int-to-long v0, v7

    aput-wide v0, v12, v6

    .line 39063
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 39064
    .end local v8    # "j":I
    .end local v7    # "num":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 39065
    goto :goto_2

    .line 39066
    .end local v4    # "length":I
    .end local v6    # "i":I
    :cond_6
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v13

    .line 39067
    .local v11, "lookupType":I
    const/4 v0, 0x2

    if-gt v13, v0, :cond_c

    .line 39068
    if-eq v13, v2, :cond_7

    if-ne v13, v0, :cond_b

    .line 39069
    :cond_7
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39070
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39071
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 39072
    .local v3, "valueBits":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39073
    if-ne v13, v2, :cond_9

    .line 39074
    if-eqz v10, :cond_8

    .line 39075
    int-to-long v2, v11

    sget-object v5, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v5, v0

    const/4 v0, 0x1

    aget-object v5, v5, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39076
    .end local v4
    :cond_8
    const-wide/16 v0, 0x0

    .restart local v4    # "length":I
    goto :goto_4

    .line 39077
    .end local v4    # "length":I
    :cond_9
    int-to-long v0, v11

    int-to-long v2, v10

    mul-long/2addr v0, v2

    goto :goto_4

    .line 39078
    :cond_a
    sget-object v5, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "D9mmqqJmTqnxQ2dihdU3MUH7YK6oq28f"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    int-to-long v0, v10

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/H8;->A01(JJ)J

    move-result-wide v0

    .line 39079
    .local v4, "lookupValuesCount":J
    .restart local v4    # "lookupValuesCount":J
    :goto_4
    int-to-long v2, v4

    mul-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39080
    .end local v3    # "valueBits":I
    .end local v4    # "lookupValuesCount":J
    :cond_b
    new-instance v9, Lcom/facebook/ads/redexgen/X/H4;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/H4;-><init>(II[JIZ)V

    return-object v9

    .line 39081
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x139

    const/16 v1, 0x2a

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39082
    .end local v0    # "entries":I
    .end local v1    # "dimensions":I
    .end local v2    # "lengthMap":[J
    .end local v10    # "isOrdered":Z
    .end local v11    # "lookupType":I
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7b

    const/16 v1, 0x37

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39083
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/H3;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39084
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/H5;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39085
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/H8;->A05(Lcom/facebook/ads/redexgen/X/4J;ZZ)Lcom/facebook/ads/redexgen/X/H5;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4J;ZZ)Lcom/facebook/ads/redexgen/X/H5;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39086
    if-eqz p1, :cond_0

    .line 39087
    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/H8;->A0C(ILcom/facebook/ads/redexgen/X/4J;Z)Z

    .line 39088
    :cond_0
    const/4 v3, 0x7

    .line 39089
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0O()J

    move-result-wide v1

    long-to-int v0, v1

    .line 39090
    .local v2, "len":I
    add-int/lit8 v3, v3, 0x4

    .line 39091
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v6

    .line 39092
    .local v1, "vendor":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 39093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0O()J

    move-result-wide v1

    .line 39094
    .local v3, "commentListLen":J
    long-to-int v0, v1

    new-array v5, v0, [Ljava/lang/String;

    .line 39095
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v7, v3, 0x4

    .line 39096
    const/4 v8, 0x0

    .local v6, "i":I
    :goto_0
    int-to-long v3, v8

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 39097
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0O()J

    move-result-wide v3

    long-to-int v0, v3

    .line 39098
    add-int/lit8 v7, v7, 0x4

    .line 39099
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 39100
    aget-object v0, v5, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v7, v0

    .line 39101
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 39102
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 39103
    :cond_2
    add-int/lit8 v1, v7, 0x1

    .line 39104
    new-instance v0, Lcom/facebook/ads/redexgen/X/H5;

    invoke-direct {v0, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/H5;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    .line 39105
    :cond_3
    const/16 v2, 0x11b

    const/16 v1, 0x1e

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/H7;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39106
    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {v4, p0, v0}, Lcom/facebook/ads/redexgen/X/H8;->A0C(ILcom/facebook/ads/redexgen/X/4J;Z)Z

    .line 39107
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0F()I

    move-result v6

    .line 39108
    .local v14, "version":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v7

    .line 39109
    .local p0, "channels":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0F()I

    move-result v8

    .line 39110
    .local p1, "sampleRate":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0E()I

    move-result v9

    .line 39111
    .local v3, "bitrateMaximum":I
    if-gtz v9, :cond_0

    .line 39112
    const/4 v9, -0x1

    .line 39113
    .end local v3    # "bitrateMaximum":I
    .local p2, "bitrateMaximum":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0E()I

    move-result v10

    .line 39114
    .local v3, "bitrateNominal":I
    if-gtz v10, :cond_1

    .line 39115
    const/4 v10, -0x1

    .line 39116
    .end local v3    # "bitrateNominal":I
    .local p3, "bitrateNominal":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0E()I

    move-result v11

    .line 39117
    .local v3, "bitrateMinimum":I
    if-gtz v11, :cond_2

    .line 39118
    const/4 v11, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hx6vx8O5nOwfxHxHuzSsxOXMbdPf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 39119
    .end local v3    # "bitrateMinimum":I
    .local p4, "bitrateMinimum":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v5

    .line 39120
    .local v13, "blockSize":I
    and-int/lit8 v0, v5, 0xf

    int-to-double v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v12, v2

    .line 39121
    .local v11, "blockSize0":I
    and-int/lit16 v2, v5, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v13, v0

    .line 39122
    .local v10, "blockSize1":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/2addr v0, v4

    if-lez v0, :cond_3

    const/4 v14, 0x1

    .line 39123
    .local v12, "framingFlag":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 39124
    .local v0, "data":[B
    new-instance v5, Lcom/facebook/ads/redexgen/X/H7;

    .end local v10    # "blockSize1":I
    .local p5, "blockSize1":I
    .end local v11    # "blockSize0":I
    .local p6, "blockSize0":I
    .end local v13    # "blockSize":I
    .local p7, "blockSize":I
    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/H7;-><init>(IIIIIIIIZ[B)V

    return-object v5

    .line 39125
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/H8;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x237

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/H8;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6bt
        0x19t
        0x3et
        0x36t
        0x33t
        0x3at
        0x3bt
        0x7ft
        0x2bt
        0x30t
        0x7ft
        0x2ft
        0x3et
        0x2dt
        0x2ct
        0x3at
        0x7ft
        0x9t
        0x30t
        0x2dt
        0x3dt
        0x36t
        0x2ct
        0x7ft
        0x3ct
        0x30t
        0x32t
        0x32t
        0x3at
        0x31t
        0x2bt
        0x65t
        0x7ft
        0x28t
        0xft
        0x7t
        0x2t
        0xbt
        0xat
        0x4et
        0x1at
        0x1t
        0x4et
        0x1et
        0xft
        0x1ct
        0x1dt
        0xbt
        0x4et
        0x18t
        0x1t
        0x1ct
        0xct
        0x7t
        0x1dt
        0x4et
        0x1et
        0x7t
        0xdt
        0x1at
        0x1bt
        0x1ct
        0xbt
        0x76t
        0x7et
        0x6ft
        0x7at
        0x7ft
        0x7at
        0x6ft
        0x7at
        0x64t
        0x79t
        0x77t
        0x74t
        0x78t
        0x70t
        0x64t
        0x6bt
        0x72t
        0x78t
        0x6ft
        0x6et
        0x69t
        0x7et
        0x3et
        0x7t
        0x1at
        0xat
        0x1t
        0x1bt
        0x3dt
        0x1ct
        0x1t
        0x4t
        0x3at
        0x27t
        0x2ft
        0x3at
        0x3ct
        0x2bt
        0x3at
        0x3bt
        0x7ft
        0x3ct
        0x37t
        0x3et
        0x2dt
        0x3et
        0x3ct
        0x2bt
        0x3at
        0x2dt
        0x2ct
        0x7ft
        0x78t
        0x29t
        0x30t
        0x2dt
        0x3dt
        0x36t
        0x2ct
        0x78t
        0x40t
        0x5dt
        0x55t
        0x40t
        0x46t
        0x51t
        0x40t
        0x41t
        0x5t
        0x46t
        0x4at
        0x41t
        0x40t
        0x5t
        0x47t
        0x4at
        0x4at
        0x4et
        0x5t
        0x51t
        0x4at
        0x5t
        0x56t
        0x51t
        0x44t
        0x57t
        0x51t
        0x5t
        0x52t
        0x4ct
        0x51t
        0x4dt
        0x5t
        0x7et
        0x15t
        0x5dt
        0x10t
        0x13t
        0x9t
        0x5t
        0x15t
        0x5dt
        0x11t
        0x16t
        0x9t
        0x5t
        0x15t
        0x5dt
        0x11t
        0x17t
        0x78t
        0x5t
        0x44t
        0x51t
        0x5t
        0x3et
        0x23t
        0x2bt
        0x3et
        0x38t
        0x2ft
        0x3et
        0x3ft
        0x7bt
        0x33t
        0x3et
        0x3at
        0x3ft
        0x3et
        0x29t
        0x7bt
        0x2ft
        0x22t
        0x2bt
        0x3et
        0x7bt
        0x6bt
        0x61t
        0x62t
        0x62t
        0x7ft
        0x2dt
        0x79t
        0x74t
        0x7dt
        0x68t
        0x2dt
        0x6at
        0x7ft
        0x68t
        0x6ct
        0x79t
        0x68t
        0x7ft
        0x2dt
        0x79t
        0x65t
        0x6ct
        0x63t
        0x2dt
        0x3ct
        0x2dt
        0x63t
        0x62t
        0x79t
        0x2dt
        0x69t
        0x68t
        0x6et
        0x62t
        0x69t
        0x6ct
        0x6ft
        0x61t
        0x68t
        0x37t
        0x2dt
        0x61t
        0x75t
        0x66t
        0x6at
        0x6et
        0x69t
        0x60t
        0x27t
        0x65t
        0x6et
        0x73t
        0x27t
        0x66t
        0x61t
        0x73t
        0x62t
        0x75t
        0x27t
        0x6at
        0x68t
        0x63t
        0x62t
        0x74t
        0x27t
        0x69t
        0x68t
        0x73t
        0x27t
        0x74t
        0x62t
        0x73t
        0x27t
        0x66t
        0x74t
        0x27t
        0x62t
        0x7ft
        0x77t
        0x62t
        0x64t
        0x73t
        0x62t
        0x63t
        0x26t
        0x32t
        0x21t
        0x2dt
        0x29t
        0x2et
        0x27t
        0x60t
        0x22t
        0x29t
        0x34t
        0x60t
        0x25t
        0x38t
        0x30t
        0x25t
        0x23t
        0x34t
        0x25t
        0x24t
        0x60t
        0x34t
        0x2ft
        0x60t
        0x22t
        0x25t
        0x60t
        0x33t
        0x25t
        0x34t
        0x2t
        0x1t
        0x1t
        0x5t
        0x1bt
        0x1et
        0x4et
        0x1at
        0x17t
        0x1et
        0xbt
        0x4et
        0x9t
        0x1ct
        0xbt
        0xft
        0x1at
        0xbt
        0x1ct
        0x4et
        0x1at
        0x6t
        0xft
        0x0t
        0x4et
        0x5ct
        0x4et
        0x0t
        0x1t
        0x1at
        0x4et
        0xat
        0xbt
        0xdt
        0x1t
        0xat
        0xft
        0xct
        0x2t
        0xbt
        0x54t
        0x4et
        0x38t
        0x34t
        0x25t
        0x25t
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x21t
        0x2ct
        0x25t
        0x30t
        0x75t
        0x3at
        0x21t
        0x3dt
        0x30t
        0x27t
        0x75t
        0x21t
        0x3dt
        0x34t
        0x3bt
        0x75t
        0x65t
        0x75t
        0x3bt
        0x3at
        0x21t
        0x75t
        0x26t
        0x20t
        0x25t
        0x25t
        0x3at
        0x27t
        0x21t
        0x30t
        0x31t
        0x6ft
        0x75t
        0x6ct
        0x70t
        0x7dt
        0x7ft
        0x79t
        0x74t
        0x73t
        0x70t
        0x78t
        0x79t
        0x6et
        0x3ct
        0x73t
        0x7at
        0x3ct
        0x68t
        0x75t
        0x71t
        0x79t
        0x3ct
        0x78t
        0x73t
        0x71t
        0x7dt
        0x75t
        0x72t
        0x3ct
        0x68t
        0x6et
        0x7dt
        0x72t
        0x6ft
        0x7at
        0x73t
        0x6et
        0x71t
        0x6ft
        0x3ct
        0x72t
        0x73t
        0x68t
        0x3ct
        0x66t
        0x79t
        0x6et
        0x73t
        0x79t
        0x78t
        0x3ct
        0x73t
        0x69t
        0x68t
        0x40t
        0x57t
        0x41t
        0x5bt
        0x56t
        0x47t
        0x57t
        0x66t
        0x4bt
        0x42t
        0x57t
        0x12t
        0x55t
        0x40t
        0x57t
        0x53t
        0x46t
        0x57t
        0x40t
        0x12t
        0x46t
        0x5at
        0x53t
        0x5ct
        0x12t
        0x0t
        0x12t
        0x5bt
        0x41t
        0x12t
        0x5ct
        0x5dt
        0x46t
        0x12t
        0x56t
        0x57t
        0x51t
        0x5dt
        0x56t
        0x53t
        0x50t
        0x5et
        0x57t
        0x5dt
        0x46t
        0x9t
        0x5bt
        0x4ct
        0x5at
        0x4ct
        0x5bt
        0x5ft
        0x4ct
        0x4dt
        0x9t
        0x4bt
        0x40t
        0x5dt
        0x5at
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x53t
        0x4ct
        0x5bt
        0x46t
        0x9t
        0x48t
        0x4ft
        0x5dt
        0x4ct
        0x5bt
        0x9t
        0x44t
        0x48t
        0x59t
        0x59t
        0x40t
        0x47t
        0x4et
        0x9t
        0x4at
        0x46t
        0x5ct
        0x59t
        0x45t
        0x40t
        0x47t
        0x4et
        0x9t
        0x5at
        0x5dt
        0x4ct
        0x59t
        0x5at
        0x10t
        0xbt
        0xbt
        0x44t
        0x17t
        0xct
        0xbt
        0x16t
        0x10t
        0x44t
        0xct
        0x1t
        0x5t
        0x0t
        0x1t
        0x16t
        0x5et
        0x44t
    .end array-data
.end method

.method public static A09(ILcom/facebook/ads/redexgen/X/H3;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39126
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v6

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 39127
    .local v0, "mappingsCount":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v4, v6, :cond_8

    .line 39128
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v7

    .line 39129
    .local v3, "mappingType":I
    if-eqz v7, :cond_1

    .line 39130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x163

    const/16 v1, 0x29

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x55

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 39131
    .end local v3    # "mappingType":I
    .end local v4
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39132
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_3

    .line 39133
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39134
    .end local v4
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 39135
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "MSIFAaOSOQQOpmu0PO7aKrLsJb3QFagu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v3, v5

    .line 39136
    .local v4, "submaps":I
    .restart local v4    # "submaps":I
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v0

    const/16 v8, 0x8

    if-eqz v0, :cond_5

    .line 39137
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v2

    add-int/2addr v2, v5

    .line 39138
    .local v6, "couplingSteps":I
    const/4 v1, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 39139
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39140
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39141
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 39142
    .end local v6    # "couplingSteps":I
    .end local v8    # "j":I
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 39143
    if-le v3, v5, :cond_6

    .line 39144
    const/4 v0, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v0, p0, :cond_6

    .line 39145
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39146
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 39147
    .end local v6    # "j":I
    :cond_6
    const/4 v7, 0x0

    .local v5, "j":I
    :goto_4
    if-ge v7, v3, :cond_0

    .line 39148
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 39149
    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "W7H2tgam7pgMqyIqKZRQoufJib3tzvKG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "g3J7gwvZXejdWYIpZtqDt0lnx57dRd6J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39150
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39151
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 39152
    .restart local v3    # "mappingType":I
    .restart local v4    # "submaps":I
    :cond_7
    const/16 v2, 0x1eb

    const/16 v1, 0x3a

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39153
    .end local v2    # "i":I
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    :cond_8
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/H3;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39154
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v4

    const/4 v14, 0x1

    add-int/2addr v4, v14

    .line 39155
    .local v1, "floorCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_9

    .line 39156
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v8

    .line 39157
    .local v5, "floorType":I
    const/4 v7, 0x4

    const/16 v6, 0x8

    packed-switch v8, :pswitch_data_0

    .line 39158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc7

    const/16 v1, 0x29

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39159
    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v10

    .line 39160
    .local v4, "partitions":I
    const/4 v2, -0x1

    .line 39161
    .local v8, "maximumClass":I
    new-array v9, v10, [I

    .line 39162
    .local v9, "partitionClassList":[I
    const/4 v1, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v1, v10, :cond_1

    .line 39163
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    aput v0, v9, v1

    .line 39164
    aget v0, v9, v1

    if-le v0, v2, :cond_0

    .line 39165
    aget v2, v9, v1

    .line 39166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39167
    .end local v10    # "j":I
    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v8, v0, [I

    .line 39168
    .local v10, "classDimensions":[I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    array-length v0, v8

    const/4 v1, 0x2

    if-ge v11, v0, :cond_4

    .line 39169
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    add-int/2addr v0, v14

    aput v0, v8, v11

    .line 39170
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v2

    .line 39171
    .local v12, "classSubclasses":I
    if-lez v2, :cond_2

    .line 39172
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39173
    :cond_2
    const/4 v1, 0x0

    .local v13, "k":I
    :goto_3
    shl-int v0, v14, v2

    if-ge v1, v0, :cond_3

    .line 39174
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39175
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 39176
    .end local v12    # "classSubclasses":I
    .end local v13    # "k":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 39177
    .end local v4    # "partitions":I
    .end local v6
    .end local v7
    .end local v8    # "maximumClass":I
    .end local v9    # "partitionClassList":[I
    .end local v10    # "classDimensions":[I
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39178
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39179
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 39180
    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "puZWVQ2pTjmoQkTRd3XFOd7V6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39181
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39182
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    add-int/2addr v0, v14

    .line 39183
    .local v4, "floorNumberOfBooks":I
    const/4 v1, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v1, v0, :cond_8

    .line 39184
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39185
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 39186
    .end local v11    # "j":I
    :cond_4
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39187
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v12

    .line 39188
    .local v6, "rangeBits":I
    const/4 v11, 0x0

    .line 39189
    .local v7, "count":I
    const/4 v7, 0x0

    .restart local v11    # "j":I
    const/4 v6, 0x0

    .local v12, "k":I
    :goto_5
    if-ge v7, v10, :cond_8

    .line 39190
    aget v13, v9, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39191
    .local v13, "idx":I
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "4gRGDU2vGyXCYhT5FVmyq5RWvUvygEh7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget v0, v8, v13

    add-int/2addr v11, v0

    .line 39192
    :goto_6
    if-ge v6, v11, :cond_7

    .line 39193
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39194
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 39195
    .end local v13    # "idx":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 39196
    .end local v4    # "floorNumberOfBooks":I
    .end local v5    # "floorType":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 39197
    .end local v3    # "i":I
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/H3;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39198
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v8

    const/4 v12, 0x1

    add-int/2addr v8, v12

    .line 39199
    .local v1, "residueCount":I
    const/4 v7, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v7, v8, :cond_7

    .line 39200
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v1

    .line 39201
    .local v4, "residueType":I
    const/4 v0, 0x2

    if-gt v1, v0, :cond_6

    .line 39202
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39203
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39204
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39205
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v6

    add-int/2addr v6, v12

    .line 39206
    .local v5, "classifications":I
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39207
    new-array v4, v6, [I

    .line 39208
    .local v7, "cascade":[I
    const/4 v3, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 39209
    const/4 v1, 0x0

    .line 39210
    .local v9, "highBits":I
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v11

    .line 39211
    .local v10, "lowBits":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39212
    const/4 v10, 0x5

    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A01:[Ljava/lang/String;

    const-string v1, "QebxPehykfYMwUhUEUOD533arJF7pEEp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v1

    .line 39213
    :cond_1
    mul-int/lit8 v0, v1, 0x8

    add-int/2addr v0, v11

    aput v0, v4, v3

    .line 39214
    .end local v9    # "highBits":I
    .end local v10    # "lowBits":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39215
    .end local v8    # "j":I
    :cond_2
    const/4 v3, 0x0

    .restart local v8    # "j":I
    :goto_2
    if-ge v3, v6, :cond_5

    .line 39216
    const/4 v2, 0x0

    .local v9, "k":I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 39217
    aget v1, v4, v3

    shl-int v0, v12, v2

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 39218
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39219
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 39220
    .end local v9    # "k":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 39221
    .end local v4    # "residueType":I
    .end local v5    # "classifications":I
    .end local v7    # "cascade":[I
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39222
    .restart local v4    # "residueType":I
    :cond_6
    const/16 v2, 0x1c0

    const/16 v1, 0x2b

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39223
    .end local v3    # "i":I
    .end local v4    # "residueType":I
    :cond_7
    return-void
.end method

.method public static A0C(ILcom/facebook/ads/redexgen/X/4J;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39224
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/4 v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_1

    .line 39225
    if-eqz p2, :cond_0

    .line 39226
    return v2

    .line 39227
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x225

    const/16 v1, 0x12

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39228
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39229
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39230
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    if-eq v0, p0, :cond_3

    .line 39231
    if-eqz p2, :cond_2

    .line 39232
    return v2

    .line 39233
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb2

    const/16 v1, 0x15

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39234
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39235
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39236
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/16 v0, 0x76

    if-ne v1, v0, :cond_4

    .line 39237
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_4

    .line 39238
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/16 v0, 0x72

    if-ne v1, v0, :cond_4

    .line 39239
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/16 v0, 0x62

    if-ne v1, v0, :cond_4

    .line 39240
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/16 v0, 0x69

    if-ne v1, v0, :cond_4

    .line 39241
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_6

    .line 39242
    :cond_4
    if-eqz p2, :cond_5

    .line 39243
    return v2

    .line 39244
    :cond_5
    const/16 v2, 0x5f

    const/16 v1, 0x1c

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39245
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/4J;I)[Lcom/facebook/ads/redexgen/X/H6;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39246
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/H8;->A0C(ILcom/facebook/ads/redexgen/X/4J;Z)Z

    .line 39247
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 39248
    .local v0, "numberOfBooks":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/H3;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/H3;-><init>([B)V

    .line 39249
    .local v1, "bitArray":Lcom/facebook/ads/redexgen/X/H3;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(I)V

    .line 39250
    const/4 v0, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 39251
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/H8;->A03(Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;

    .line 39252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39253
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 39254
    .local v2, "timeCount":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 39255
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 39256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39257
    :cond_1
    const/16 v2, 0x18c

    const/16 v1, 0x34

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 39258
    .end local v3    # "i":I
    :cond_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/H8;->A0A(Lcom/facebook/ads/redexgen/X/H3;)V

    .line 39259
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/H8;->A0B(Lcom/facebook/ads/redexgen/X/H3;)V

    .line 39260
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/H8;->A09(ILcom/facebook/ads/redexgen/X/H3;)V

    .line 39261
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/H8;->A0E(Lcom/facebook/ads/redexgen/X/H3;)[Lcom/facebook/ads/redexgen/X/H6;

    move-result-object v1

    .line 39262
    .local v3, "modes":[Lcom/facebook/ads/redexgen/X/H6;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39263
    return-object v1

    .line 39264
    :cond_3
    const/16 v2, 0xf0

    const/16 v1, 0x2b

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/H3;)[Lcom/facebook/ads/redexgen/X/H6;
    .locals 8

    .line 39265
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 39266
    .local v0, "modeCount":I
    new-array v6, v7, [Lcom/facebook/ads/redexgen/X/H6;

    .line 39267
    .local v1, "modes":[Lcom/facebook/ads/redexgen/X/H6;
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 39268
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/H3;->A04()Z

    move-result v4

    .line 39269
    .local v3, "blockFlag":Z
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v3

    .line 39270
    .local v5, "windowType":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v2

    .line 39271
    .local v4, "transformType":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(I)I

    move-result v1

    .line 39272
    .local v6, "mapping":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/H6;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/H6;-><init>(ZIII)V

    aput-object v0, v6, v5

    .line 39273
    .end local v3    # "blockFlag":Z
    .end local v4    # "transformType":I
    .end local v5    # "windowType":I
    .end local v6    # "mapping":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39274
    .end local v2    # "i":I
    :cond_0
    return-object v6
.end method
