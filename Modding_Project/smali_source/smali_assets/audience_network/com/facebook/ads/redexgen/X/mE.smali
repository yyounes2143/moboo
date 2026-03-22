.class public final Lcom/facebook/ads/redexgen/X/mE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cl;,
        Lcom/facebook/ads/redexgen/X/Cm;,
        Lcom/facebook/ads/redexgen/X/Cn;
    }
.end annotation


# static fields
.field public static A0Y:[B

.field public static A0Z:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:Landroid/net/Uri;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D14652852 for LiveTrace"
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/or;

.field public A0C:Lcom/facebook/ads/redexgen/X/or;

.field public A0D:Lcom/facebook/ads/redexgen/X/or;

.field public A0E:Lcom/facebook/ads/redexgen/X/9G;

.field public A0F:Lcom/facebook/ads/redexgen/X/Cn;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:[I

.field public A0O:[I

.field public A0P:[I

.field public A0Q:[J

.field public A0R:[J

.field public A0S:[Lcom/facebook/ads/redexgen/X/Gz;

.field public final A0T:Lcom/facebook/ads/redexgen/X/9P;

.field public final A0U:Lcom/facebook/ads/redexgen/X/9U;

.field public final A0V:Lcom/facebook/ads/redexgen/X/Cj;

.field public final A0W:Lcom/facebook/ads/redexgen/X/Cl;

.field public final A0X:Lcom/facebook/ads/redexgen/X/D2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/D2<",
            "Lcom/facebook/ads/redexgen/X/Cm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3150
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "85R60pw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bhfqNyhgsMMcgxDZV18ZYvPWnAETveJ8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tBTQ49uE8lCvjdowyQOxeOaVlddkkQsD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cRYvTCVhA9B6pxggP4HMUODB0FrVm2He"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qWsUB7mYWdY8z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PljQg4leV4XdGi9pMhsrxdm25IT3iHNc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UH2NGYtrpmiPe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fmnhpkR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mE;->A0E()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/9P;)V
    .locals 2

    .line 98172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98173
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0U:Lcom/facebook/ads/redexgen/X/9U;

    .line 98174
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/mE;->A0T:Lcom/facebook/ads/redexgen/X/9P;

    .line 98175
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cj;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Cj;-><init>(Lcom/facebook/ads/redexgen/X/EO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    .line 98176
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Cl;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0W:Lcom/facebook/ads/redexgen/X/Cl;

    .line 98177
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    .line 98178
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0P:[I

    .line 98179
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    .line 98180
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    .line 98181
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    .line 98182
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    .line 98183
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Gz;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0S:[Lcom/facebook/ads/redexgen/X/Gz;

    .line 98184
    new-instance v1, Lcom/facebook/ads/redexgen/X/mF;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/mF;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/D2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/D2;-><init>(Lcom/facebook/ads/redexgen/X/3X;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    .line 98185
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A09:J

    .line 98186
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A06:J

    .line 98187
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A07:J

    .line 98188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0L:Z

    .line 98189
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0M:Z

    .line 98190
    return-void
.end method

.method private A00(I)I
    .locals 2

    .line 98191
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    add-int/2addr v1, p1

    .line 98192
    .local v0, "relativeIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private A01(IIJZ)I
    .locals 5

    .line 98193
    const/4 v4, -0x1

    .line 98194
    .local v0, "sampleCountToTarget":I
    .local v1, "searchIndex":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v3, p2, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p3

    if-gtz v0, :cond_1

    .line 98195
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 98196
    :cond_0
    move v4, v3

    .line 98197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p3

    if-nez v0, :cond_2

    .line 98198
    .end local v2    # "i":I
    :cond_1
    return v4

    .line 98199
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 98200
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    if-ne p1, v0, :cond_3

    .line 98201
    const/4 p1, 0x0

    .line 98202
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private A02(J)I
    .locals 5

    .line 98203
    iget v4, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    .line 98204
    .local v0, "count":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v3

    .line 98205
    .local v1, "relativeSampleIndex":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    if-le v4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aget-wide v1, v0, v3

    cmp-long v0, v1, p1

    if-ltz v0, :cond_2

    .line 98206
    add-int/lit8 v4, v4, -0x1

    .line 98207
    add-int/lit8 v3, v3, -0x1

    .line 98208
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 98209
    iget v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const-string v1, "AmG8zl9kQR5zaFQB0ENdPerRnzM6g9Ua"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 98210
    :cond_2
    return v4
.end method

.method private declared-synchronized A03(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;ZZLcom/facebook/ads/redexgen/X/Cl;)I
    .locals 7

    monitor-enter p0

    .line 98211
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/nY;->A04:Z

    .line 98212
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0K()Z

    move-result v0

    const/4 v3, -0x5

    const/4 v2, -0x3

    const/4 v6, -0x4

    if-nez v0, :cond_4

    .line 98213
    if-nez p4, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98214
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    if-eq v1, v0, :cond_2

    .line 98215
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/6N;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/mE;->A0H(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/6N;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98216
    monitor-exit p0

    return v3

    .line 98217
    :cond_2
    monitor-exit p0

    return v2

    .line 98218
    :cond_3
    :goto_0
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/5I;->A02(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98219
    monitor-exit p0

    return v6

    .line 98220
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0O()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D2;->A01(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 98221
    .local v0, "format":Lcom/facebook/ads/redexgen/X/or;
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    if-eq v1, v0, :cond_6

    .line 98222
    .end local v1
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/mE;->A0H(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/6N;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98223
    monitor-exit p0

    return v3

    .line 98224
    :cond_6
    :try_start_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v5

    .line 98225
    .local v1, "relativeReadIndex":I
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/mE;->A0L(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 98226
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/nY;->A04:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98227
    monitor-exit p0

    return v2

    .line 98228
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    aget v0, v0, v5

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/5I;->A02(I)V

    .line 98229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aget-wide v0, v0, v5

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    .line 98230
    iget-wide v3, p2, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A09:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_8

    .line 98231
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/5I;->A00(I)V

    .line 98232
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    aget v0, v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 98233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    aget-wide v0, v0, v5

    iput-wide v0, p5, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    .line 98234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0S:[Lcom/facebook/ads/redexgen/X/Gz;

    aget-object v0, v0, v5

    iput-object v0, p5, Lcom/facebook/ads/redexgen/X/Cl;->A02:Lcom/facebook/ads/redexgen/X/Gz;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98235
    monitor-exit p0

    return v6

    .line 98236
    .end local v0    # "format":Lcom/facebook/ads/redexgen/X/or;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/nY;
    .end local p3    # null:Z
    .end local p4    # null:Z
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/Cl;
    .end local p6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A04()J
    .locals 2

    monitor-enter p0

    .line 98237
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98238
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 98239
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 98240
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized A05()J
    .locals 4

    monitor-enter p0

    .line 98241
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A08(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A06(I)J
    .locals 4

    .line 98242
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A06:J

    .line 98243
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mE;->A08(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A06:J

    .line 98244
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    .line 98245
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:I

    .line 98246
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    .line 98247
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    if-lt v1, v0, :cond_0

    .line 98248
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    .line 98249
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    .line 98250
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    if-gez v0, :cond_1

    .line 98251
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    .line 98252
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D2;->A04(I)V

    .line 98253
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    if-nez v0, :cond_3

    .line 98254
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 98255
    .local v0, "relativeLastDiscardIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 98256
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    goto :goto_0

    .line 98257
    .end local v0    # "relativeLastDiscardIndex":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    aget-wide v0, v1, v0

    return-wide v0
.end method

.method private A07(I)J
    .locals 7

    .line 98258
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0P()I

    move-result v6

    sub-int/2addr v6, p1

    .line 98259
    .local v0, "discardCount":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v6, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    sub-int/2addr v1, v0

    if-gt v6, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 98260
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    .line 98261
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A08(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A07:J

    .line 98262
    if-nez v6, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A0G:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 98263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const-string v1, "9q2py6RZjKVKU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "N5i42TN5jvK54"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 98264
    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/mE;->A0G:Z

    .line 98265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/D2;->A03(I)V

    .line 98266
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    if-eqz v0, :cond_3

    .line 98267
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    sub-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v1

    .line 98268
    .local v1, "relativeLastWriteIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 98269
    .end local v1    # "relativeLastWriteIndex":I
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private A08(I)J
    .locals 6

    .line 98270
    if-nez p1, :cond_0

    .line 98271
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 98272
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 98273
    .local v0, "largestTimestampUs":J
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v0

    .line 98274
    .local v2, "relativeSampleIndex":I
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 98275
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aget-wide v3, v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 98276
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    aget v3, v3, v0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 98277
    .end local v3    # "i":I
    :cond_1
    return-wide v1

    .line 98278
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 98279
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 98280
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    add-int/lit8 v0, v0, -0x1

    .line 98281
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private declared-synchronized A09(JZZ)J
    .locals 11

    monitor-enter p0

    .line 98282
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    aget-wide v1, v1, v0

    move-wide v8, p1

    cmp-long v0, v8, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 98283
    :cond_0
    if-eqz p4, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    add-int/lit8 v7, v0, 0x1

    goto :goto_0

    .end local v9
    :cond_1
    iget v7, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    .line 98284
    .local v5, "searchLength":I
    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    move-object v5, p0

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/mE;->A01(IIJZ)I

    move-result v1

    .line 98285
    .local v0, "discardCount":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98286
    monitor-exit p0

    return-wide v3

    .line 98287
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 98288
    .end local v0    # "discardCount":I
    .end local v5    # "searchLength":I
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v3

    .line 98289
    .end local v10
    .end local p1    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;
    .locals 5

    .line 98290
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A08:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 98291
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/or;->A07()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v4

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A08:J

    add-long/2addr v2, v0

    .line 98292
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/2D;->A0s(J)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 98293
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object p1

    .line 98294
    :cond_0
    return-object p1
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/9P;)Lcom/facebook/ads/redexgen/X/mE;
    .locals 3

    .line 98295
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9U;

    .line 98296
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9P;

    new-instance v0, Lcom/facebook/ads/redexgen/X/mE;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/mE;-><init>(Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/9P;)V

    .line 98297
    return-object v0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mE;->A0Y:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0D()V
    .locals 2

    .line 98298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    if-eqz v0, :cond_0

    .line 98299
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0T:Lcom/facebook/ads/redexgen/X/9P;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9G;->AGs(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 98300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    .line 98301
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    .line 98302
    :cond_0
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mE;->A0Y:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x4at
        0x39t
        0x46t
        0x46t
        0x3dt
        0x38t
        0x3dt
        0x42t
        0x3bt
        -0xct
        0x49t
        0x42t
        0x39t
        0x4ct
        0x44t
        0x39t
        0x37t
        0x48t
        0x39t
        0x38t
        -0xct
        0x42t
        0x43t
        0x42t
        0x1t
        0x47t
        0x4dt
        0x42t
        0x37t
        -0xct
        0x47t
        0x35t
        0x41t
        0x44t
        0x40t
        0x39t
        -0xct
        0x3at
        0x43t
        0x46t
        -0xct
        0x3at
        0x43t
        0x46t
        0x41t
        0x35t
        0x48t
        0xet
        -0xct
        -0x3et
        -0x30t
        -0x24t
        -0x21t
        -0x25t
        -0x2ct
        -0x40t
        -0x1ct
        -0x2ct
        -0x1ct
        -0x2ct
    .end array-data
.end method

.method private declared-synchronized A0F()V
    .locals 1

    monitor-enter p0

    .line 98303
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    .line 98304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cj;->A0B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98305
    monitor-exit p0

    return-void

    .line 98306
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0G(JIJILcom/facebook/ads/redexgen/X/Gz;)V
    .locals 12

    move-object v3, p0

    monitor-enter p0

    .line 98307
    :try_start_0
    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 98308
    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    sub-int/2addr v0, v8

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v1

    .line 98309
    .local v0, "previousSampleRelativeIndex":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    aget-wide v4, v0, v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 98310
    .end local v0    # "previousSampleRelativeIndex":I
    .end local p3    # null:I
    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0G:Z

    .line 98311
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A07:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A07:J

    .line 98312
    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v4

    .line 98313
    .local v0, "relativeEndIndex":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aput-wide p1, v0, v4

    .line 98314
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    aput-wide p4, v0, v4

    .line 98315
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    aput p6, v0, v4

    .line 98316
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    aput p3, v0, v4

    .line 98317
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0S:[Lcom/facebook/ads/redexgen/X/Gz;

    aput-object p7, v0, v4

    .line 98318
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0P:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A05:I

    aput v0, v1, v4

    .line 98319
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A06()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    .line 98320
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/or;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98321
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0U:Lcom/facebook/ads/redexgen/X/9U;

    if-eqz v0, :cond_5

    .line 98322
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/mE;->A0U:Lcom/facebook/ads/redexgen/X/9U;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0T:Lcom/facebook/ads/redexgen/X/9P;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->AGJ(Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/9T;

    move-result-object v7

    .line 98323
    .local v6, "drmSessionReference":Lcom/facebook/ads/redexgen/X/9T;
    :goto_2
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    .line 98324
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0P()I

    move-result v5

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    .line 98325
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/or;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cm;

    invoke-direct {v0, v4, v7, v1}, Lcom/facebook/ads/redexgen/X/Cm;-><init>(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/9T;Lcom/facebook/ads/redexgen/X/Ck;)V

    .line 98326
    invoke-virtual {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/D2;->A05(ILjava/lang/Object;)V

    .line 98327
    .end local v6    # "drmSessionReference":Lcom/facebook/ads/redexgen/X/9T;
    :cond_4
    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    add-int/2addr v0, v8

    iput v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    .line 98328
    iget v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    if-ne v1, v0, :cond_6

    .line 98329
    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    add-int/lit16 v11, v0, 0x3e8

    .line 98330
    .local v4, "newCapacity":I
    new-array v10, v11, [I

    .line 98331
    .local v6, "newSourceIds":[I
    new-array v9, v11, [J

    .line 98332
    .local v7, "newOffsets":[J
    new-array v8, v11, [J

    .line 98333
    .local v8, "newTimesUs":[J
    new-array v7, v11, [I

    .line 98334
    .local v9, "newFlags":[I
    new-array v6, v11, [I

    .line 98335
    .local v10, "newSizes":[I
    new-array v5, v11, [Lcom/facebook/ads/redexgen/X/Gz;

    .line 98336
    .local v11, "newCryptoDatas":[Lcom/facebook/ads/redexgen/X/Gz;
    iget v4, v3, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    sub-int/2addr v4, v0

    .line 98337
    .local p0, "beforeWrap":I
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    invoke-static {v1, v0, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98338
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    invoke-static {v1, v0, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98339
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    invoke-static {v1, v0, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98340
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    invoke-static {v1, v0, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98341
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0S:[Lcom/facebook/ads/redexgen/X/Gz;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    invoke-static {v1, v0, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98342
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A0P:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    invoke-static {v1, v0, v10, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98343
    iget v1, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    .line 98344
    .local p1, "afterWrap":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    invoke-static {v0, v2, v9, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98345
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    invoke-static {v0, v2, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98346
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    invoke-static {v0, v2, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98347
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    invoke-static {v0, v2, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98348
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0S:[Lcom/facebook/ads/redexgen/X/Gz;

    invoke-static {v0, v2, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98349
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mE;->A0P:[I

    invoke-static {v0, v2, v10, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98350
    iput-object v9, v3, Lcom/facebook/ads/redexgen/X/mE;->A0Q:[J

    .line 98351
    iput-object v8, v3, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    .line 98352
    iput-object v7, v3, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    .line 98353
    iput-object v6, v3, Lcom/facebook/ads/redexgen/X/mE;->A0O:[I

    .line 98354
    iput-object v5, v3, Lcom/facebook/ads/redexgen/X/mE;->A0S:[Lcom/facebook/ads/redexgen/X/Gz;

    .line 98355
    iput-object v10, v3, Lcom/facebook/ads/redexgen/X/mE;->A0P:[I

    .line 98356
    iput v2, v3, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    .line 98357
    iput v11, v3, Lcom/facebook/ads/redexgen/X/mE;->A01:I

    goto :goto_3

    .line 98358
    :cond_5
    sget-object v7, Lcom/facebook/ads/redexgen/X/9T;->A00:Lcom/facebook/ads/redexgen/X/9T;

    goto/16 :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98359
    .end local v4    # "newCapacity":I
    .end local v6    # "newSourceIds":[I
    .end local v7    # "newOffsets":[J
    .end local v8    # "newTimesUs":[J
    .end local v9    # "newFlags":[I
    .end local v10    # "newSizes":[I
    .end local v11    # "newCryptoDatas":[Lcom/facebook/ads/redexgen/X/Gz;
    .end local p0    # "beforeWrap":I
    .end local p1    # "afterWrap":I
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 98360
    .end local v0    # "relativeEndIndex":I
    .end local p4    # null:J
    .end local p6    # null:I
    .end local p7    # null:Lcom/facebook/ads/redexgen/X/Gz;
    .end local p9
    .end local p10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/6N;)V
    .locals 4

    .line 98361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 98362
    .local v0, "isFirstFormat":Z
    :goto_0
    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 98363
    .local v1, "oldDrmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    .line 98364
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 98365
    .local v2, "newDrmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0U:Lcom/facebook/ads/redexgen/X/9U;

    if-eqz v0, :cond_0

    .line 98366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0U:Lcom/facebook/ads/redexgen/X/9U;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9U;->A7O(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/or;->A08(I)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 98367
    :goto_2
    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 98368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/6N;->A01:Lcom/facebook/ads/redexgen/X/9G;

    .line 98369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0U:Lcom/facebook/ads/redexgen/X/9U;

    if-nez v0, :cond_3

    .line 98370
    return-void

    .line 98371
    :cond_0
    move-object v0, p1

    goto :goto_2

    .line 98372
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/or;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    goto :goto_1

    .line 98373
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 98374
    :cond_3
    if-nez v3, :cond_5

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const-string v1, "kvzQNhfSOapIkFZHH0bucpMR2mlOE4Ro"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pNWQqJuQrvmashmvXYzFnQ0x9nljUjVN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 98375
    return-void

    .line 98376
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 98377
    .local v3, "playbackLooper":Landroid/os/Looper;
    if-nez v0, :cond_6

    .line 98378
    return-void

    .line 98379
    :cond_6
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    .line 98380
    .local p0, "previousSession":Lcom/facebook/ads/redexgen/X/9G;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0U:Lcom/facebook/ads/redexgen/X/9U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0T:Lcom/facebook/ads/redexgen/X/9P;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/9U;->A34(Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/9G;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    .line 98381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/6N;->A01:Lcom/facebook/ads/redexgen/X/9G;

    .line 98382
    if-eqz v2, :cond_7

    .line 98383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0T:Lcom/facebook/ads/redexgen/X/9P;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/9G;->AGs(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 98384
    :cond_7
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Cm;)V
    .locals 0

    .line 98385
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A01:Lcom/facebook/ads/redexgen/X/9T;

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/9T;->AGr()V

    return-void
.end method

.method private final A0J(Z)V
    .locals 4

    .line 98386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cj;->A0A()V

    .line 98387
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    .line 98388
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:I

    .line 98389
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    .line 98390
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    .line 98391
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0M:Z

    .line 98392
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A09:J

    .line 98393
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A06:J

    .line 98394
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A07:J

    .line 98395
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mE;->A0G:Z

    .line 98396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A02()V

    .line 98397
    if-eqz p1, :cond_0

    .line 98398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0C:Lcom/facebook/ads/redexgen/X/or;

    .line 98399
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    .line 98400
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0L:Z

    .line 98401
    :cond_0
    return-void
.end method

.method private A0K()Z
    .locals 2

    .line 98402
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0L(I)Z
    .locals 2

    .line 98403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    .line 98404
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9G;->A92()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0N:[I

    aget v1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    .line 98405
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9G;->AGH()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 98406
    :goto_0
    return v0

    .line 98407
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized A0M(J)Z
    .locals 5

    monitor-enter p0

    .line 98408
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 98409
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A06:J

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v4

    .line 98410
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A05()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-ltz v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98411
    monitor-exit p0

    return v3

    .line 98412
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mE;->A02(J)I

    move-result v1

    .line 98413
    .local v0, "retainCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98414
    monitor-exit p0

    return v4

    .line 98415
    .end local v0    # "retainCount":I
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0N(Lcom/facebook/ads/redexgen/X/or;)Z
    .locals 3

    monitor-enter p0

    .line 98416
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0L:Z

    .line 98417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98418
    monitor-exit p0

    return v2

    .line 98419
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    .line 98420
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/or;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:Lcom/facebook/ads/redexgen/X/or;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    .line 98422
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    .line 98423
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A0G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0J:Z

    .line 98424
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0H:Z

    goto :goto_1

    .line 98425
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98426
    :goto_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 98427
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/or;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A0O()I
    .locals 2

    .line 98428
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0P()I
    .locals 2

    .line 98429
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final declared-synchronized A0Q(JZ)I
    .locals 10

    monitor-enter p0

    .line 98430
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v5

    .line 98431
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0K()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aget-wide v1, v0, v5

    move-wide v7, p1

    cmp-long v0, v7, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 98432
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A07:J

    cmp-long v0, v7, v1

    if-lez v0, :cond_1

    if-eqz p3, :cond_1

    .line 98433
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 98434
    .end local v8
    :cond_1
    :try_start_1
    iget v6, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    sub-int/2addr v6, v0

    .line 98435
    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/mE;->A01(IIJZ)I

    move-result v1

    .line 98436
    .local v1, "offset":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98437
    monitor-exit p0

    return v3

    .line 98438
    :cond_2
    monitor-exit p0

    return v1

    .line 98439
    .end local v1    # "offset":I
    :cond_3
    :goto_0
    monitor-exit p0

    return v3

    .line 98440
    .end local v0    # "relativeReadIndex":I
    .end local v9
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;IZ)I
    .locals 11

    .line 98441
    and-int/lit8 v0, p3, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_0
    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/mE;->A0W:Lcom/facebook/ads/redexgen/X/Cl;

    .line 98442
    move-object v5, p0

    move v9, p4

    move-object v7, p2

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/mE;->A03(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;ZZLcom/facebook/ads/redexgen/X/Cl;)I

    move-result v2

    .line 98443
    .local v0, "result":I
    const/4 v0, -0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98444
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 98445
    .local v1, "peek":Z
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_1

    .line 98446
    if-eqz v4, :cond_3

    .line 98447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0W:Lcom/facebook/ads/redexgen/X/Cl;

    invoke-virtual {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A0E(Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;)V

    .line 98448
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 98449
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    .line 98450
    .end local v1    # "peek":Z
    :cond_2
    return v2

    .line 98451
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0W:Lcom/facebook/ads/redexgen/X/Cl;

    invoke-virtual {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A0F(Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;)V

    goto :goto_1

    .line 98452
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized A0S()J
    .locals 2

    monitor-enter p0

    .line 98453
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A04:I

    aget-wide v0, v1, v0

    goto :goto_1

    :goto_0
    const-wide/high16 v0, -0x8000000000000000L
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0T()J
    .locals 2

    monitor-enter p0

    .line 98454
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A07:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0U()Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    monitor-enter p0

    .line 98455
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0L:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    goto :goto_1

    :goto_0
    const/4 v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0V()V
    .locals 3

    .line 98456
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Cj;->A0C(J)V

    .line 98457
    return-void
.end method

.method public final A0W()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9G;->A92()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 98459
    :cond_0
    return-void

    .line 98460
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0E:Lcom/facebook/ads/redexgen/X/9G;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9G;->A7s()Lcom/facebook/ads/redexgen/X/9E;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9E;

    throw v0
.end method

.method public final A0X()V
    .locals 0

    .line 98461
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0V()V

    .line 98462
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0D()V

    .line 98463
    return-void
.end method

.method public final A0Y()V
    .locals 1

    .line 98464
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A0J(Z)V

    .line 98465
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0D()V

    .line 98466
    return-void
.end method

.method public final A0Z()V
    .locals 1

    .line 98467
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A0J(Z)V

    .line 98468
    return-void
.end method

.method public final declared-synchronized A0a(I)V
    .locals 2

    monitor-enter p0

    .line 98469
    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    add-int/2addr v1, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .restart local p1    # null:I
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 98470
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98471
    monitor-exit p0

    return-void

    .line 98472
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    .end local p1
    monitor-exit p0

    throw v0
.end method

.method public final A0b(J)V
    .locals 0

    .line 98473
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/mE;->A09:J

    .line 98474
    return-void
.end method

.method public final A0c(JZZ)V
    .locals 3

    .line 98475
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    .line 98476
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/mE;->A09(JZZ)J

    move-result-wide v0

    .line 98477
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Cj;->A0C(J)V

    .line 98478
    return-void
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/Cn;)V
    .locals 0

    .line 98479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0F:Lcom/facebook/ads/redexgen/X/Cn;

    .line 98480
    return-void
.end method

.method public final declared-synchronized A0e()Z
    .locals 1

    monitor-enter p0

    .line 98481
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0f(JZ)Z
    .locals 10

    monitor-enter p0

    .line 98482
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0F()V

    .line 98483
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v5

    .line 98484
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0K()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0R:[J

    aget-wide v1, v0, v5

    move-wide v7, p1

    cmp-long v0, v7, v1

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A07:J

    cmp-long v0, v7, v1

    if-lez v0, :cond_1

    if-nez p3, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98485
    .end local v1
    .end local v8
    :cond_0
    monitor-exit p0

    return v3

    .line 98486
    :cond_1
    :try_start_1
    iget v6, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    sub-int/2addr v6, v0

    .line 98487
    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/mE;->A01(IIJZ)I

    move-result v1

    .line 98488
    .local v1, "offset":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98489
    monitor-exit p0

    return v3

    .line 98490
    :cond_2
    :try_start_2
    iput-wide v7, p0, Lcom/facebook/ads/redexgen/X/mE;->A09:J

    .line 98491
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98492
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 98493
    .end local v0    # "relativeReadIndex":I
    .end local v9
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0g(Z)Z
    .locals 3

    monitor-enter p0

    .line 98494
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0K()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 98495
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0G:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    if-eq v1, v0, :cond_0

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mE;
    :cond_0
    const/4 v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 98496
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0X:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mE;->A0O()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D2;->A01(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0B:Lcom/facebook/ads/redexgen/X/or;

    if-eq v1, v0, :cond_3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98497
    monitor-exit p0

    return v2

    .line 98498
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A00(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A0L(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 98499
    .end local p1    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A6W(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 3

    .line 98500
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mE;->A0A(Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v2

    .line 98501
    .local v0, "adjustedUpstreamFormat":Lcom/facebook/ads/redexgen/X/or;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0K:Z

    .line 98502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0C:Lcom/facebook/ads/redexgen/X/or;

    .line 98503
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/mE;->A0N(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v1

    .line 98504
    .local v1, "upstreamFormatChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0F:Lcom/facebook/ads/redexgen/X/Cn;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 98505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0F:Lcom/facebook/ads/redexgen/X/Cn;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Cn;->AFb(Lcom/facebook/ads/redexgen/X/or;)V

    .line 98506
    :cond_0
    return-void
.end method

.method public final synthetic AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Gy;->A00(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v0

    return v0
.end method

.method public final AI6(Lcom/facebook/ads/redexgen/X/20;IZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cj;->A08(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v0

    return v0
.end method

.method public final synthetic AI7(Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gy;->A01(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/4J;I)V

    return-void
.end method

.method public final AI8(Lcom/facebook/ads/redexgen/X/4J;II)V
    .locals 1

    .line 98508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cj;->A0D(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 98509
    return-void
.end method

.method public final AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V
    .locals 15

    .line 98510
    move/from16 v10, p3

    move-wide/from16 v8, p1

    move-object v5, p0

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0K:Z

    if-eqz v0, :cond_0

    .line 98511
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0C:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/mE;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 98512
    :cond_0
    and-int/lit8 v0, v10, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .line 98513
    .local v9, "isKeyframe":Z
    :goto_0
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0M:Z

    if-eqz v0, :cond_3

    .line 98514
    if-nez v7, :cond_2

    .line 98515
    return-void

    .line 98516
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 98517
    :cond_2
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/mE;->A0M:Z

    .line 98518
    :cond_3
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A08:J

    add-long/2addr v8, v0

    .line 98519
    .end local p3    # null:I
    .local v10, "timeUs":J
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0J:Z

    if-eqz v0, :cond_6

    .line 98520
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A09:J

    cmp-long v2, v8, v0

    if-gez v2, :cond_4

    .line 98521
    return-void

    .line 98522
    :cond_4
    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_6

    .line 98523
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0H:Z

    if-nez v0, :cond_5

    .line 98524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mE;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0D:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0xb

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mE;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 98525
    iput-boolean v6, v5, Lcom/facebook/ads/redexgen/X/mE;->A0H:Z

    .line 98526
    :cond_5
    or-int/lit8 v10, v10, 0x1

    .line 98527
    .end local p5    # null:I
    .local v0, "flags":I
    .end local p5
    .local v12, "flags":I
    :cond_6
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0I:Z

    if-eqz v0, :cond_a

    .line 98528
    if-eqz v7, :cond_8

    invoke-direct {v5, v8, v9}, Lcom/facebook/ads/redexgen/X/mE;->A0M(J)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const-string v1, "Q9ljdKDjpshc47nqlMYBFO0YDotnOqX8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_9

    .line 98529
    :cond_8
    return-void

    .line 98530
    :cond_9
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/mE;->A0I:Z

    .line 98531
    :cond_a
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mE;->A0V:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cj;->A09()J

    move-result-wide v11

    sget-object v1, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_b

    goto :goto_1

    .line 98532
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A0Z:[Ljava/lang/String;

    const-string v1, "281h4YOhy96mUgaRFHojQOWi7hgLUzVm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move/from16 v13, p4

    int-to-long v0, v13

    sub-long/2addr v11, v0

    move/from16 v0, p5

    int-to-long v0, v0

    sub-long/2addr v11, v0

    .line 98533
    .local p0, "absoluteOffset":J
    move-object v7, p0

    move-object/from16 v14, p6

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/mE;->A0G(JIJILcom/facebook/ads/redexgen/X/Gz;)V

    .line 98534
    return-void
.end method

.method public final AJu(Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D14652852 for LiveTrace"
    .end annotation

    .line 98535
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mE;->A0A:Landroid/net/Uri;

    .line 98536
    return-void
.end method
