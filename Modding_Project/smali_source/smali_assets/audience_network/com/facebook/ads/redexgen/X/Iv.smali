.class public final Lcom/facebook/ads/redexgen/X/Iv;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public final A09:[I

.field public final A0A:Lcom/facebook/ads/redexgen/X/4J;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 787
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k49nAlN8KevTPYFSOASLph6sBsYk4fa7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZHcqIGWhgUaBv559uPYodmfdla4z6YNf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jyudHMVcZvePNcLp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lBa1kLRes0ajIcq6EZkhg1VE2ZO4hxQe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "m2AqQobddrkuylEWDBAfxEjZEg6GjKoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "b8nnr3L8PmBoSjec6BWbo41G2gNha3bi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Iv;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Iv;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43139
    const/16 v1, 0xff

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A09:[I

    .line 43140
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iv;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x15

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

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Iv;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x2ct
        0x31t
        0x37t
        0x32t
        0x32t
        0x2dt
        0x30t
        0x36t
        0x27t
        0x26t
        0x62t
        0x20t
        0x2bt
        0x36t
        0x62t
        0x31t
        0x36t
        0x30t
        0x27t
        0x23t
        0x2ft
        0x62t
        0x30t
        0x27t
        0x34t
        0x2bt
        0x31t
        0x2bt
        0x2dt
        0x2ct
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 43141
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Iv;->A03:I

    .line 43142
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Iv;->A04:I

    .line 43143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    .line 43144
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A08:J

    .line 43145
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A07:J

    .line 43146
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A06:J

    .line 43147
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    .line 43148
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    .line 43149
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    .line 43150
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43151
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Iv;->A04(Lcom/facebook/ads/redexgen/X/lN;J)Z

    move-result v0

    return v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/lN;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43152
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v3, 0x1

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 43153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 43154
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v0, p2, v8

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v5

    const-wide/16 v0, 0x4

    add-long/2addr v5, v0

    cmp-long v0, v5, p2

    if-gez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 43155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    .line 43156
    invoke-static {p1, v0, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/GZ;->A04(Lcom/facebook/ads/redexgen/X/lN;[BIIZ)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iv;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iv;->A0C:[Ljava/lang/String;

    const-string v1, "pwarRjQHbZVi4rcQZ7lOEWakVYY08Z6g"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_4

    .line 43157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 43158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v5

    const-wide/32 v1, 0x4f676753

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 43159
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 43160
    return v3

    .line 43161
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_1

    .line 43162
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43163
    :cond_4
    :goto_2
    cmp-long v0, p2, v8

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v1

    cmp-long v0, v1, p2

    if-gez v0, :cond_7

    .line 43164
    :cond_5
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->AJG(I)I

    move-result v6

    const/4 v5, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iv;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Iv;->A0C:[Ljava/lang/String;

    const-string v1, "68cxMfwSaXaldqHF3br6ENxggzqDHiHt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "gDTREffoH4ayxQFZG5Xi34FUHKUeipYB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v6, v5, :cond_7

    goto :goto_2

    .line 43165
    :cond_7
    return v4
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/lN;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43166
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Iv;->A02()V

    .line 43167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    const/16 v4, 0x1b

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 43168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v4, p2}, Lcom/facebook/ads/redexgen/X/GZ;->A04(Lcom/facebook/ads/redexgen/X/lN;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 43169
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v5

    const-wide/32 v1, 0x4f676753

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    .line 43170
    :cond_0
    return v3

    .line 43171
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iv;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Iv;->A0C:[Ljava/lang/String;

    const-string v1, "M9XA72oAU7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A03:I

    .line 43172
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A03:I

    if-eqz v0, :cond_4

    .line 43173
    if-eqz p2, :cond_3

    .line 43174
    return v3

    .line 43175
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Iv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 43176
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A04:I

    .line 43177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    .line 43178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A08:J

    .line 43179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A07:J

    .line 43180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A06:J

    .line 43181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    .line 43182
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    .line 43183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 43184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    invoke-static {p1, v1, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/GZ;->A04(Lcom/facebook/ads/redexgen/X/lN;[BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 43185
    return v3

    .line 43186
    :cond_5
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    if-ge v2, v0, :cond_6

    .line 43187
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iv;->A09:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    aput v0, v1, v2

    .line 43188
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A09:[I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    .line 43189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43190
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x1

    return v0
.end method
