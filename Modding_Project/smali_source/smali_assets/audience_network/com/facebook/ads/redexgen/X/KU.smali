.class public final Lcom/facebook/ads/redexgen/X/KU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/4J;

.field public final A07:Lcom/facebook/ads/redexgen/X/4R;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 951
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "voRQ6Eoiy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dM5sUr3BWW4nkGo5nRVfbphD0FkiLgeI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t4ngtozvUcRON5qFCPMw9NZHviWOcz8N"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2o"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HR4o0SgaegzvmEvMyBsSV3cy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Fxd3YqblXENYapC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iFe6DhKEBr1iW4qwRCto7Lk6hMgexe67"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "drzzj9o5hc6Li6ZR2JGiBSJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KU;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KU;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49128
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A07:Lcom/facebook/ads/redexgen/X/4R;

    .line 49129
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:J

    .line 49130
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A02:J

    .line 49131
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:J

    .line 49132
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    .line 49133
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 2

    .line 49134
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0i([B)V

    .line 49135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A03:Z

    .line 49136
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49137
    const/4 v0, 0x0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49138
    const-wide/16 v2, 0x4e20

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 49139
    .local v1, "bytesToSearch":I
    const/4 v7, 0x0

    .line 49140
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v5

    int-to-long v0, v7

    const/4 v3, 0x1

    cmp-long v2, v5, v0

    if-eqz v2, :cond_0

    .line 49141
    int-to-long v0, v7

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 49142
    return v3

    .line 49143
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KU;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KU;->A09:[Ljava/lang/String;

    const-string v1, "JjjcAHcIe3bphcpehmdhx0lOvmd2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 49144
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v4}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KU;->A04(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:J

    .line 49147
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Z

    .line 49148
    return v2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49149
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v1

    .line 49150
    .local v0, "inputLength":J
    const-wide/16 v3, 0x4e20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v6, v3

    .line 49151
    .local v3, "bytesToSearch":I
    int-to-long v3, v6

    sub-long/2addr v1, v3

    .line 49152
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v4

    const/4 v3, 0x1

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 49153
    iput-wide v1, p2, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 49154
    return v3

    .line 49155
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 49156
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KU;->A05(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A02:J

    .line 49159
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A05:Z

    .line 49160
    return v2
.end method

.method private A03([BI)I
    .locals 2

    .line 49161
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    return v1
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 7

    .line 49162
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v6

    .line 49163
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v5

    .line 49164
    .local v1, "searchEndPosition":I
    .local v2, "searchPosition":I
    :goto_0
    add-int/lit8 v0, v5, -0x3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v0, :cond_1

    .line 49165
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/KU;->A03([BI)I

    move-result v1

    .line 49166
    .local v3, "nextStartCode":I
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_0

    .line 49167
    add-int/lit8 v0, v6, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 49168
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KU;->A06(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v1

    .line 49169
    .local v6, "scrValue":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 49170
    return-wide v1

    .line 49171
    .end local v3    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49172
    .end local v2    # "searchPosition":I
    :cond_1
    return-wide v3
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 9

    .line 49173
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v6

    .line 49174
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    .line 49175
    .local v1, "searchEndPosition":I
    add-int/lit8 v5, v0, -0x4

    .line 49176
    .local v2, "searchPosition":I
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v5, v6, :cond_2

    .line 49177
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/KU;->A03([BI)I

    move-result v1

    .line 49178
    .local v5, "nextStartCode":I
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_1

    .line 49179
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 49180
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KU;->A06(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KU;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49181
    .local v6, "scrValue":J
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KU;->A09:[Ljava/lang/String;

    const-string v1, "fZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmp-long v0, v3, v7

    if-eqz v0, :cond_1

    .line 49182
    return-wide v3

    .line 49183
    .end local v5    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 49184
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v7
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 6

    .line 49185
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v5

    .line 49186
    .local v0, "originalPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    .line 49187
    return-wide v3

    .line 49188
    :cond_0
    new-array v2, v0, [B

    .line 49189
    .local v1, "scrBytes":[B
    const/4 v1, 0x0

    array-length v0, v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 49190
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 49191
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/KU;->A0A([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49192
    return-wide v3

    .line 49193
    :cond_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/KU;->A07([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A07([B)J
    .locals 13

    .line 49194
    const/4 v4, 0x0

    aget-byte v0, p0, v4

    int-to-long v2, v0

    const-wide/16 v0, 0x38

    and-long/2addr v2, v0

    const/4 v12, 0x3

    shr-long/2addr v2, v12

    const/16 v0, 0x1e

    shl-long/2addr v2, v0

    aget-byte v0, p0, v4

    int-to-long v4, v0

    const-wide/16 v10, 0x3

    and-long/2addr v4, v10

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v0, 0x14

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v1, 0x2

    aget-byte v0, p0, v1

    int-to-long v4, v0

    const-wide/16 v6, 0xf8

    and-long/2addr v4, v6

    shr-long/2addr v4, v12

    const/16 v0, 0xf

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    aget-byte v0, p0, v1

    int-to-long v4, v0

    and-long/2addr v4, v10

    const/16 v0, 0xd

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    aget-byte v0, p0, v12

    int-to-long v4, v0

    and-long/2addr v4, v8

    const/4 v0, 0x5

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    shr-long/2addr v0, v12

    or-long/2addr v2, v0

    return-wide v2
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KU;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KU;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x13t
        -0x21t
        0x14t
        0x32t
        0x28t
        0x2dt
        0x26t
        -0x21t
        0x13t
        0x8t
        0xct
        0x4t
        0x1et
        0x14t
        0xdt
        0x12t
        0x4t
        0x13t
        -0x21t
        0x28t
        0x2dt
        0x32t
        0x33t
        0x24t
        0x20t
        0x23t
        -0x13t
        0x12t
        0x37t
        0x3ft
        0x2at
        0x35t
        0x32t
        0x2dt
        -0x17t
        0x2dt
        0x3et
        0x3bt
        0x2at
        0x3dt
        0x32t
        0x38t
        0x37t
        0x3t
        -0x17t
        0x16t
        0x39t
        0xat
        0x3bt
        0x38t
        0x27t
        0x3at
        0x2ft
        0x35t
        0x34t
        0x18t
        0x2bt
        0x27t
        0x2at
        0x2bt
        0x38t
    .end array-data
.end method

.method public static A0A([B)Z
    .locals 3

    .line 49195
    const/4 v2, 0x0

    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    .line 49196
    return v2

    .line 49197
    :cond_0
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 49198
    return v2

    .line 49199
    :cond_1
    aget-byte v0, p0, v1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 49200
    return v2

    .line 49201
    :cond_2
    const/4 v0, 0x5

    aget-byte v1, p0, v0

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_3

    .line 49202
    return v2

    .line 49203
    :cond_3
    const/16 v0, 0x8

    aget-byte v1, p0, v0

    const/4 v0, 0x3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49204
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A05:Z

    if-nez v0, :cond_0

    .line 49205
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KU;->A02(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 49206
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 49207
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0

    .line 49208
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Z

    if-nez v0, :cond_2

    .line 49209
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KU;->A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 49210
    :cond_2
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 49211
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0

    .line 49212
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A07:Lcom/facebook/ads/redexgen/X/4R;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    move-result-wide v5

    .line 49213
    .local v0, "minScrPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A07:Lcom/facebook/ads/redexgen/X/4R;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A02:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    move-result-wide v3

    .line 49214
    .local v4, "maxScrPositionUs":J
    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:J

    .line 49215
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    .line 49216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1b

    const/16 v3, 0x12

    const/16 v0, 0x7a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KU;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/16 v0, 0x70

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KU;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x2d

    const/16 v3, 0x10

    const/16 v0, 0x77

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KU;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 49217
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:J

    .line 49218
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0
.end method

.method public final A0C()J
    .locals 2

    .line 49219
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:J

    return-wide v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/4R;
    .locals 1

    .line 49220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A07:Lcom/facebook/ads/redexgen/X/4R;

    return-object v0
.end method

.method public final A0E()Z
    .locals 1

    .line 49221
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A03:Z

    return v0
.end method
