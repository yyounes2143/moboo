.class public final Lcom/facebook/ads/redexgen/X/KG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# static fields
.field public static A0B:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Xm;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Lcom/facebook/ads/redexgen/X/KE;

.field public A07:Ljava/lang/Integer;

.field public A08:Z

.field public A09:Z

.field public A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KG;->A01()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 1

    .line 48218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A0A:Z

    .line 48220
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A09:Z

    .line 48221
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A08:Z

    .line 48222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    .line 48223
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KG;->A01:I

    .line 48224
    iput p2, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:I

    .line 48225
    iput p3, p0, Lcom/facebook/ads/redexgen/X/KG;->A02:I

    .line 48226
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/KG;->A05:Ljava/lang/String;

    .line 48227
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Ljava/lang/String;

    .line 48228
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    .line 48229
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/KG;->A06:Lcom/facebook/ads/redexgen/X/KE;

    .line 48230
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KG;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KG;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x66t
        0x70t
        0x76t
        0x66t
        0x48t
        0x75t
        0x61t
        0x60t
        0x7bt
        0x77t
        0x78t
        0x7dt
        0x77t
        0x7ft
    .end array-data
.end method

.method private declared-synchronized A02()V
    .locals 1

    monitor-enter p0

    .line 48231
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A08:Z

    if-eqz v0, :cond_0

    .line 48232
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KG;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48233
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/KG;
    :cond_0
    monitor-exit p0

    return-void

    .line 48234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/KG;)V
    .locals 0

    .line 48235
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KG;->A02()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A04()V
    .locals 4

    monitor-enter p0

    .line 48236
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A09:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48237
    monitor-exit p0

    return-void

    .line 48238
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A09:Z

    .line 48239
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A01:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    if-eqz v0, :cond_2

    .line 48240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImage(Lcom/facebook/ads/redexgen/X/XX;)V

    .line 48241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 48242
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 48243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A07()V

    .line 48244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 48245
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 48246
    .end local v3
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A06:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aB;->getColorInfo()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48247
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A06:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aB;->getColorInfo()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->A0A(Lcom/facebook/ads/redexgen/X/My;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48248
    :cond_2
    monitor-exit p0

    return-void

    .line 48249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ACp()V
    .locals 4

    monitor-enter p0

    .line 48250
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A09:Z

    if-nez v0, :cond_0

    .line 48251
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KG;->A06:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v2, 0x6

    const/16 v1, 0x9

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    .line 48252
    .end local v2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KG;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48253
    monitor-exit p0

    return-void

    .line 48254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEn(F)V
    .locals 6

    monitor-enter p0

    .line 48255
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A09:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 48256
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A01:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    .line 48257
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A0A:Z

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-nez v0, :cond_2

    .line 48258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarActionMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    .line 48259
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a3;-><init>(Lcom/facebook/ads/redexgen/X/KG;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 48260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A08()V

    .line 48261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/KH;-><init>(Lcom/facebook/ads/redexgen/X/KG;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Xl;)V

    .line 48262
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/KG;->A0A:Z

    .line 48263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    .line 48264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 48265
    .end local v5
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 48266
    :cond_2
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A02:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_7

    .line 48267
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A08:Z

    if-nez v0, :cond_4

    .line 48268
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/KG;->A08:Z

    .line 48269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/Integer;

    .line 48270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 48271
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 48272
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(III)Ljava/lang/String;

    move-result-object v0

    float-to-double v1, p1

    .line 48273
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 48274
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 48275
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImage(Lcom/facebook/ads/redexgen/X/XX;)V

    .line 48276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_1

    .line 48277
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_0

    .line 48278
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48279
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    .line 48280
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    .line 48281
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/KG;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
