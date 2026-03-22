.class public final Lcom/facebook/ads/redexgen/X/ju;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;

.field public static final A0N:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:Lcom/facebook/ads/redexgen/X/H1;

.field public A0B:Lcom/facebook/ads/redexgen/X/H1;

.field public A0C:Lcom/facebook/ads/redexgen/X/H1;

.field public A0D:Ljava/lang/String;

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public final A0H:Lcom/facebook/ads/redexgen/X/4I;

.field public final A0I:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0J:Ljava/lang/String;

.field public final A0K:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3031
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mrTKvxULVENuxsX20WcrAJ4v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LussONYVy0olIUlKNuZbFssmQ2DfHEVf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zvJRCSTXMBsZ1hE0Mr7ze3FhUb04dJIh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "L0YacQwQPMjWe9KaI5mJ2LmFBjZFt0ZK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1hx48ZBneHnM7bdYLzCUfsF2U1nSOVt0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UVBTZnk6apz1fVZpxMzmfRHtaRIycLGw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y7M7p8C63xXJXfMDaPj4j21Etz7HrkAn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dpgmp2dWdChOdFvADkjRIu4gRUIL2TAI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ju;->A09()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ju;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 91111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ju;-><init>(ZLjava/lang/String;)V

    .line 91112
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    .line 91113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91114
    const/4 v0, 0x7

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    .line 91115
    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0N:[B

    const/16 v0, 0xa

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0I:Lcom/facebook/ads/redexgen/X/4J;

    .line 91116
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A06()V

    .line 91117
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:I

    .line 91118
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:I

    .line 91119
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A08:J

    .line 91120
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:J

    .line 91121
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0K:Z

    .line 91122
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ju;->A0J:Ljava/lang/String;

    .line 91123
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "currentOutput",
            "id3Output"
        }
    .end annotation

    .line 91124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0C:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91125
    return-void
.end method

.method private A02()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 91126
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91127
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0G:Z

    const/4 v5, 0x5

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 91128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 91129
    .local v0, "audioObjectType":I
    if-eq v6, v4, :cond_0

    .line 91130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0x1c

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 91131
    const/4 v6, 0x2

    .line 91132
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 91133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 91134
    .local v4, "channelConfig":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:I

    .line 91135
    invoke-static {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/GB;->A07(III)[B

    move-result-object v8

    .line 91136
    .local v5, "audioSpecificConfig":[B
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/GB;->A03([B)Lcom/facebook/ads/redexgen/X/GA;

    move-result-object v6

    .line 91137
    .local v6, "aacConfig":Lcom/facebook/ads/redexgen/X/GA;
    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0D:Ljava/lang/String;

    .line 91138
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v3

    .line 91139
    const/16 v2, 0x4b

    const/16 v1, 0xf

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/GA;->A02:Ljava/lang/String;

    .line 91140
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v6, Lcom/facebook/ads/redexgen/X/GA;->A00:I

    .line 91141
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v6, Lcom/facebook/ads/redexgen/X/GA;->A01:I

    .line 91142
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 91143
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0J:Ljava/lang/String;

    .line 91144
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 91145
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v6

    .line 91146
    .local v7, "format":Lcom/facebook/ads/redexgen/X/or;
    iget v0, v6, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    int-to-long v2, v0

    const-wide/32 v0, 0x3d090000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A08:J

    .line 91147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0C:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 91148
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/ju;->A0G:Z

    .line 91149
    .end local v0    # "audioObjectType":I
    .end local v4    # "channelConfig":I
    .end local v5    # "audioSpecificConfig":[B
    .end local v6    # "aacConfig":Lcom/facebook/ads/redexgen/X/GA;
    .end local v7    # "format":Lcom/facebook/ads/redexgen/X/or;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 91150
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 91151
    .local v0, "sampleSize":I
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A0F:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const-string v1, "giOljvViomSrN4IHC4QybJTR7ABLuXqE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "jFLriiyuw9puslkouPTFj8AuXirD2Rvz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 91152
    add-int/lit8 v6, v6, -0x2

    .line 91153
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ju;->A0C:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A08:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/ju;->A0D(Lcom/facebook/ads/redexgen/X/H1;JII)V

    .line 91154
    return-void

    .line 91155
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "id3Output"
        }
    .end annotation

    .line 91156
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0I:Lcom/facebook/ads/redexgen/X/4J;

    const/16 v0, 0xa

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 91157
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0I:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91158
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0I:Lcom/facebook/ads/redexgen/X/4J;

    .line 91159
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0H()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    .line 91160
    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/ju;->A0D(Lcom/facebook/ads/redexgen/X/H1;JII)V

    .line 91161
    return-void
.end method

.method private A04()V
    .locals 1

    .line 91162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0E:Z

    .line 91163
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A06()V

    .line 91164
    return-void
.end method

.method private A05()V
    .locals 1

    .line 91165
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:I

    .line 91166
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 91167
    return-void
.end method

.method private A06()V
    .locals 1

    .line 91168
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:I

    .line 91169
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 91170
    const/16 v0, 0x100

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    .line 91171
    return-void
.end method

.method private A07()V
    .locals 1

    .line 91172
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:I

    .line 91173
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 91174
    return-void
.end method

.method private A08()V
    .locals 2

    .line 91175
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:I

    .line 91176
    sget-object v0, Lcom/facebook/ads/redexgen/X/ju;->A0N:[B

    array-length v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 91177
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:I

    .line 91178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0I:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91179
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ju;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x57t
        -0x67t
        -0x54t
        -0x55t
        0x57t
        -0x68t
        -0x56t
        -0x56t
        -0x54t
        -0x5ct
        -0x60t
        -0x5bt
        -0x62t
        0x57t
        0x78t
        0x78t
        0x7at
        0x57t
        -0x7dt
        0x7at
        0x65t
        -0x62t
        -0x3ft
        -0x2ft
        -0x30t
        -0x51t
        -0x3et
        -0x42t
        -0x3ft
        -0x3et
        -0x31t
        0x4dt
        0x6et
        0x7dt
        0x6et
        0x6ct
        0x7dt
        0x6et
        0x6dt
        0x29t
        0x6at
        0x7et
        0x6dt
        0x72t
        0x78t
        0x29t
        0x78t
        0x6bt
        0x73t
        0x6et
        0x6ct
        0x7dt
        0x29t
        0x7dt
        -0x7et
        0x79t
        0x6et
        0x43t
        0x29t
        -0x2ft
        -0x20t
        -0x20t
        -0x24t
        -0x27t
        -0x2dt
        -0x2ft
        -0x1ct
        -0x27t
        -0x21t
        -0x22t
        -0x61t
        -0x27t
        -0x2ct
        -0x5dt
        -0x4at
        -0x36t
        -0x47t
        -0x42t
        -0x3ct
        -0x7ct
        -0x3et
        -0x3bt
        -0x77t
        -0x4at
        -0x7et
        -0x3ft
        -0x4at
        -0x37t
        -0x3et
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 5

    .line 91180
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 91181
    return-void

    .line 91182
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    aget-byte v1, v1, v0

    const/4 v0, 0x0

    aput-byte v1, v2, v0

    .line 91183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    .line 91185
    .local v0, "currentFrameSampleRateIndex":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget v4, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const-string v1, "gsvCXwBusIGEB1WA3fanWinNUC0stLKn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jdr5Xoms36XQNA1pdvYLzBfLUyE1GaLW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_2

    .line 91186
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A04()V

    .line 91187
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 91188
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0E:Z

    if-nez v0, :cond_3

    .line 91189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0E:Z

    .line 91190
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:I

    .line 91191
    iput v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:I

    .line 91192
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A07()V

    .line 91193
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 7

    .line 91194
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v6

    .line 91195
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 91196
    .local v1, "position":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v3

    .line 91197
    .local v2, "endOffset":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 91198
    add-int/lit8 v2, v4, 0x1

    .end local v1    # "position":I
    .local v3, "position":I
    aget-byte v0, v6, v4

    and-int/lit16 v5, v0, 0xff

    .line 91199
    .local v1, "data":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_3

    int-to-byte v1, v5

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ju;->A0E(BB)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91200
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0E:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, -0x2

    .line 91201
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A0G(Lcom/facebook/ads/redexgen/X/4J;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91202
    :cond_0
    and-int/lit8 v0, v5, 0x8

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:I

    .line 91203
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0F:Z

    .line 91204
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0E:Z

    if-nez v0, :cond_1

    .line 91205
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A05()V

    .line 91206
    :goto_2
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91207
    return-void

    .line 91208
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A07()V

    goto :goto_2

    .line 91209
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 91210
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    or-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    .line 91211
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    const/16 v0, 0x100

    if-eq v1, v0, :cond_4

    .line 91212
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    .line 91213
    add-int/lit8 v4, v2, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const-string v1, "GFWHNKn9X7s15i1eiUIDtSq2eHiOoz5U"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "NE8NIWAGBkU3RGGIPZnBOUiADBs4e2Uh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_0

    .line 91214
    :sswitch_0
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    .line 91215
    goto :goto_3

    .line 91216
    :sswitch_1
    iput v4, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    .line 91217
    goto :goto_3

    .line 91218
    :sswitch_2
    const/16 v0, 0x300

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:I

    .line 91219
    .end local v1    # "data":I
    :cond_4
    :goto_3
    move v4, v2

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 91220
    :sswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A08()V

    .line 91221
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91222
    return-void

    .line 91223
    :cond_6
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91224
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_2
        0x1ff -> :sswitch_1
        0x344 -> :sswitch_0
        0x433 -> :sswitch_3
    .end sparse-switch
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentOutput"
        }
    .end annotation

    .line 91225
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 91226
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 91227
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 91228
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:I

    if-ne v1, v0, :cond_1

    .line 91229
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 91230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:J

    iget v4, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 91231
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A07:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:J

    .line 91232
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A06()V

    .line 91233
    :cond_1
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/H1;JII)V
    .locals 1

    .line 91234
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:I

    .line 91235
    iput p4, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 91236
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/H1;

    .line 91237
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/ju;->A07:J

    .line 91238
    iput p5, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:I

    .line 91239
    return-void
.end method

.method private A0E(BB)Z
    .locals 2

    .line 91240
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, p2, 0xff

    or-int/2addr v1, v0

    .line 91241
    .local v0, "syncWord":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ju;->A0F(I)Z

    move-result v0

    return v0
.end method

.method public static A0F(I)Z
    .locals 2

    .line 91242
    const v1, 0xfff6

    and-int/2addr v1, p0

    const v0, 0xfff0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/4J;I)Z
    .locals 10

    .line 91243
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    const/4 v3, 0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/ju;->A0I(Lcom/facebook/ads/redexgen/X/4J;[BI)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 91245
    return v9

    .line 91246
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v5

    .line 91248
    .local v0, "currentFrameVersion":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:I

    if-eq v5, v0, :cond_1

    .line 91249
    return v9

    .line 91250
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:I

    if-eq v0, v4, :cond_5

    .line 91251
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const-string v1, "jLrw1acULskGm0062b4gZF3kQyMgNqoA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/ju;->A0I(Lcom/facebook/ads/redexgen/X/4J;[BI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91252
    return v3

    .line 91253
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 91255
    .local v4, "currentFrameSampleRateIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:I

    if-eq v1, v0, :cond_4

    .line 91256
    return v9

    .line 91257
    :cond_4
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91258
    .end local v4    # "currentFrameSampleRateIndex":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    invoke-direct {p0, p1, v0, v6}, Lcom/facebook/ads/redexgen/X/ju;->A0I(Lcom/facebook/ads/redexgen/X/4J;[BI)Z

    move-result v0

    if-nez v0, :cond_6

    .line 91259
    return v3

    .line 91260
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 91262
    .local v3, "frameSize":I
    const/4 v0, 0x7

    if-ge v1, v0, :cond_7

    .line 91263
    return v9

    .line 91264
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v8

    .line 91265
    .local v4, "data":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v6

    .line 91266
    .local v6, "dataLimit":I
    add-int/2addr p2, v1

    .line 91267
    .local v7, "nextSyncPosition":I
    if-lt p2, v6, :cond_8

    .line 91268
    return v3

    .line 91269
    :cond_8
    aget-byte v7, v8, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_9

    goto :goto_0

    .line 91270
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0M:[Ljava/lang/String;

    const-string v1, "CseuUypkgzVyQ9FeMZonHsAsUfwYiVF8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Ey77lIcw04xWGEhpgcU1ARBrUIvYEeZM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v7, v4, :cond_c

    .line 91271
    add-int/lit8 v0, p2, 0x1

    if-ne v0, v6, :cond_a

    .line 91272
    return v3

    .line 91273
    :cond_a
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, v8, v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/ju;->A0E(BB)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, v8, v0

    and-int/lit8 v0, v0, 0x8

    shr-int/lit8 v0, v0, 0x3

    if-ne v0, v5, :cond_b

    :goto_1
    return v3

    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    .line 91274
    :cond_c
    aget-byte v1, v8, p2

    const/16 v0, 0x49

    if-eq v1, v0, :cond_d

    .line 91275
    return v9

    .line 91276
    :cond_d
    add-int/lit8 v0, p2, 0x1

    if-ne v0, v6, :cond_e

    .line 91277
    return v3

    .line 91278
    :cond_e
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, v8, v0

    const/16 v0, 0x44

    if-eq v1, v0, :cond_f

    .line 91279
    return v9

    .line 91280
    :cond_f
    add-int/lit8 v0, p2, 0x2

    if-ne v0, v6, :cond_10

    .line 91281
    return v3

    .line 91282
    :cond_10
    add-int/lit8 v0, p2, 0x2

    aget-byte v1, v8, v0

    const/16 v0, 0x33

    if-ne v1, v0, :cond_11

    :goto_2
    return v3

    :cond_11
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/4J;[BI)Z
    .locals 2

    .line 91283
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 91284
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 91285
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 91286
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/4J;[BI)Z
    .locals 2

    .line 91287
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/4 v0, 0x0

    if-ge v1, p3, :cond_0

    .line 91288
    return v0

    .line 91289
    :cond_0
    invoke-virtual {p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 91290
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0J()J
    .locals 2

    .line 91291
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A08:J

    return-wide v0
.end method

.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 91292
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A01()V

    .line 91293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_2

    .line 91294
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:I

    packed-switch v0, :pswitch_data_0

    .line 91295
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 91296
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ju;->A0C(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 91297
    goto :goto_0

    .line 91298
    :pswitch_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0F:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    .line 91299
    .local v0, "targetLength":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0H:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/ju;->A0H(Lcom/facebook/ads/redexgen/X/4J;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91300
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A02()V

    goto :goto_0

    .line 91301
    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    .line 91302
    .end local v0    # "targetLength":I
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0I:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A0H(Lcom/facebook/ads/redexgen/X/4J;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91303
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A03()V

    goto :goto_0

    .line 91304
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ju;->A0A(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 91305
    goto :goto_0

    .line 91306
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ju;->A0B(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 91307
    goto :goto_0

    .line 91308
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 5

    .line 91309
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 91310
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0D:Ljava/lang/String;

    .line 91311
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0C:Lcom/facebook/ads/redexgen/X/H1;

    .line 91312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0C:Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/H1;

    .line 91313
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0K:Z

    if-eqz v0, :cond_0

    .line 91314
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 91315
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x5

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Lcom/facebook/ads/redexgen/X/H1;

    .line 91316
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Lcom/facebook/ads/redexgen/X/H1;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 91317
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v3

    .line 91318
    const/16 v2, 0x3c

    const/16 v1, 0xf

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 91319
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 91320
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 91321
    :goto_0
    return-void

    .line 91322
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/lO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Lcom/facebook/ads/redexgen/X/H1;

    goto :goto_0
.end method

.method public final AG5()V
    .locals 0

    .line 91323
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 91324
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 91325
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:J

    .line 91326
    :cond_0
    return-void
.end method

.method public final AIL()V
    .locals 2

    .line 91327
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:J

    .line 91328
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A04()V

    .line 91329
    return-void
.end method
