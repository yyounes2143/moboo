.class public final Lcom/facebook/ads/redexgen/X/4Z;
.super Lcom/facebook/ads/redexgen/X/Hr;
.source ""


# static fields
.field public static A0o:[B

.field public static A0p:[Ljava/lang/String;

.field public static final A0q:I

.field public static final A0r:I

.field public static final A0s:I

.field public static final A0t:I

.field public static final A0u:I

.field public static final A0v:I

.field public static final A0w:I

.field public static final A0x:I


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Landroid/os/Handler;

.field public A09:Landroid/view/inputmethod/InputMethodManager;

.field public A0A:Landroid/widget/LinearLayout;

.field public A0B:Landroid/widget/LinearLayout;

.field public A0C:Landroid/widget/TextView;

.field public A0D:Lcom/facebook/ads/redexgen/X/My;

.field public A0E:Lcom/facebook/ads/redexgen/X/ZO;

.field public A0F:Lcom/facebook/ads/redexgen/X/ZP;

.field public A0G:Lcom/facebook/ads/redexgen/X/LJ;

.field public A0H:Lcom/facebook/ads/redexgen/X/bJ;

.field public A0I:Lcom/facebook/ads/redexgen/X/db;

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public A0T:Z

.field public final A0U:I

.field public final A0V:Lcom/facebook/ads/redexgen/X/MH;

.field public final A0W:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0X:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/Xm;

.field public final A0Z:Lcom/facebook/ads/redexgen/X/cT;

.field public final A0a:Lcom/facebook/ads/redexgen/X/EG;

.field public final A0b:Lcom/facebook/ads/redexgen/X/E1;

.field public final A0c:Lcom/facebook/ads/redexgen/X/3i;

.field public final A0d:Lcom/facebook/ads/redexgen/X/DX;

.field public final A0e:Lcom/facebook/ads/redexgen/X/DV;

.field public final A0f:Lcom/facebook/ads/redexgen/X/DR;

.field public final A0g:Lcom/facebook/ads/redexgen/X/DP;

.field public final A0h:Lcom/facebook/ads/redexgen/X/DN;

.field public final A0i:Lcom/facebook/ads/redexgen/X/DM;

.field public final A0j:Lcom/facebook/ads/redexgen/X/D1;

.field public final A0k:Lcom/facebook/ads/redexgen/X/Cw;

.field public final A0l:Ljava/lang/Runnable;

.field public final A0m:Z

.field public final A0n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 296
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uilIZmuHzpP0N9Y8quer6Kb2u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9UUD4l8CpJqeXgkdEQyriIYmJbPiqOP7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EZE4mnuFogdbCIqsVVCLHtYnmK0aZj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "syebs7ncPc1rj4O1rMWtVdBIydy8e5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8mpGklwdfsm8yo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l0wQPHeYLTHnG4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "V5rJxyMt8frjvUGIYtzHbFROecFIJypl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I99F1f62ejGluaFUQtWt4OKUQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()V

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0q:I

    .line 297
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0r:I

    .line 298
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0s:I

    .line 299
    const/high16 v1, 0x41d00000    # 26.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0w:I

    .line 300
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0x:I

    .line 301
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0u:I

    .line 302
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0v:I

    .line 303
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4Z;->A0t:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/YY;ILcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;IZZLcom/facebook/ads/redexgen/X/cT;II)V
    .locals 18

    .line 13349
    move-object/from16 v1, p0

    move-object/from16 v5, p0

    move-object/from16 v2, p1

    move-object v6, v2

    move/from16 v14, p15

    move/from16 v12, p12

    move/from16 v11, p11

    move-object/from16 v13, p8

    move/from16 v10, p7

    move-object/from16 v7, p6

    move-object/from16 v9, p4

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v14}, Lcom/facebook/ads/redexgen/X/Hr;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;IZZLcom/facebook/ads/redexgen/X/Xn;I)V

    .line 13350
    const/4 v4, 0x0

    iput v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A03:I

    .line 13351
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:Z

    .line 13352
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0Q:Z

    .line 13353
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0N:Z

    .line 13354
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0P:Z

    .line 13355
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0O:Z

    .line 13356
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0M:Z

    .line 13357
    iput v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A07:I

    .line 13358
    iput v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A02:I

    .line 13359
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0R:Z

    .line 13360
    new-instance v3, Lcom/facebook/ads/redexgen/X/cF;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/cF;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0l:Ljava/lang/Runnable;

    .line 13361
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0L:Z

    .line 13362
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0T:Z

    .line 13363
    const/4 v3, 0x0

    iput v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A01:F

    .line 13364
    new-instance v3, Lcom/facebook/ads/redexgen/X/4k;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/4k;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0h:Lcom/facebook/ads/redexgen/X/DN;

    .line 13365
    new-instance v3, Lcom/facebook/ads/redexgen/X/4i;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/4i;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0g:Lcom/facebook/ads/redexgen/X/DP;

    .line 13366
    new-instance v3, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/4h;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0f:Lcom/facebook/ads/redexgen/X/DR;

    .line 13367
    new-instance v3, Lcom/facebook/ads/redexgen/X/4e;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/4e;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0i:Lcom/facebook/ads/redexgen/X/DM;

    .line 13368
    new-instance v3, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/4d;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0d:Lcom/facebook/ads/redexgen/X/DX;

    .line 13369
    new-instance v3, Lcom/facebook/ads/redexgen/X/4b;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/4b;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0e:Lcom/facebook/ads/redexgen/X/DV;

    .line 13370
    move-object/from16 v3, p3

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0Y:Lcom/facebook/ads/redexgen/X/Xm;

    .line 13371
    move/from16 v3, p14

    iput v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0U:I

    .line 13372
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A08:Landroid/os/Handler;

    .line 13373
    const/16 v6, 0xc

    const/16 v5, 0xc

    const/16 v3, 0x1c

    invoke-static {v6, v5, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/dL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A09:Landroid/view/inputmethod/InputMethodManager;

    .line 13374
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v12

    .line 13375
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mz;->A05()Ljava/lang/String;

    move-result-object v3

    .line 13376
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 13377
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v17

    .line 13378
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v2

    move-object v11, v8

    invoke-static/range {v10 .. v17}, Lcom/facebook/ads/redexgen/X/MI;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/N3;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0V:Lcom/facebook/ads/redexgen/X/MH;

    .line 13379
    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13380
    move-object/from16 v3, p9

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    .line 13381
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    new-instance v3, Lcom/facebook/ads/redexgen/X/D1;

    invoke-direct {v3, v6, v5}, Lcom/facebook/ads/redexgen/X/D1;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0j:Lcom/facebook/ads/redexgen/X/D1;

    .line 13382
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v5, -0x1

    new-instance v3, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v3, v6, v5}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(Lcom/facebook/ads/redexgen/X/dL;I)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0k:Lcom/facebook/ads/redexgen/X/Cw;

    .line 13383
    move-object/from16 v3, p13

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0Z:Lcom/facebook/ads/redexgen/X/cT;

    .line 13384
    move/from16 v3, p10

    if-ne v3, v0, :cond_2

    .line 13385
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v3

    .line 13386
    :goto_0
    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0D:Lcom/facebook/ads/redexgen/X/My;

    .line 13387
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/E1;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    .line 13388
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    .line 13389
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v7

    const/4 v3, 0x6

    new-array v6, v3, [Lcom/facebook/ads/redexgen/X/Tf;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0h:Lcom/facebook/ads/redexgen/X/DN;

    aput-object v3, v6, v4

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0g:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v3, v6, v0

    const/4 v5, 0x2

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0f:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v3, v6, v5

    const/4 v5, 0x3

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0i:Lcom/facebook/ads/redexgen/X/DM;

    aput-object v3, v6, v5

    const/4 v5, 0x4

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0d:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v3, v6, v5

    const/4 v5, 0x5

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0e:Lcom/facebook/ads/redexgen/X/DV;

    aput-object v3, v6, v5

    .line 13390
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 13391
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    .line 13392
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {v3, v2, v8, v6, v5}, Lcom/facebook/ads/redexgen/X/3i;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0c:Lcom/facebook/ads/redexgen/X/3i;

    .line 13393
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0U()V

    .line 13394
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v3

    .line 13395
    .local v3, "videoUrl":Ljava/lang/String;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    move-object/from16 v6, p5

    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/E1;->setVideoURI(Ljava/lang/String;)V

    .line 13396
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0R()V

    .line 13397
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0O()V

    .line 13398
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0N()V

    .line 13399
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13400
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v3

    .line 13401
    invoke-static {v5, v1, v3}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 13402
    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/4Z;->setupLayoutConfiguration(Z)V

    .line 13403
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0T()V

    .line 13404
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0S()V

    .line 13405
    new-instance v5, Lcom/facebook/ads/redexgen/X/HA;

    invoke-direct {v5, v1}, Lcom/facebook/ads/redexgen/X/HA;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/4Z;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13406
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13407
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13408
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v5

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13409
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ue;->AK2(Landroid/view/View;Ljava/lang/String;Z)V

    .line 13410
    :cond_0
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/U7;->A1v(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13411
    new-instance v10, Lcom/facebook/ads/redexgen/X/EG;

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13412
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0c:Lcom/facebook/ads/redexgen/X/3i;

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v12, v8

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Lcom/facebook/ads/redexgen/X/EG;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Dc;Ljava/util/Map;)V

    iput-object v10, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0a:Lcom/facebook/ads/redexgen/X/EG;

    .line 13413
    :goto_1
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0Y(Lcom/facebook/ads/redexgen/X/Mp;)V

    .line 13414
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mo;->A1e()Z

    move-result v3

    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0m:Z

    .line 13415
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mo;->A1p()Z

    move-result v3

    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0n:Z

    .line 13416
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-boolean v2, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0m:Z

    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0n:Z

    .line 13417
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->ABe(ZZZ)V

    .line 13418
    return-void

    .line 13419
    :cond_1
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0a:Lcom/facebook/ads/redexgen/X/EG;

    goto :goto_1

    .line 13420
    :cond_2
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ml;->A00()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/4Z;)F
    .locals 0

    .line 13421
    iget p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/4Z;)F
    .locals 0

    .line 13422
    iget p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:F

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/4Z;F)F
    .locals 0

    .line 13423
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A00:F

    return p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/4Z;F)F
    .locals 1

    .line 13424
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:F

    return v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 0

    .line 13425
    iget p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 13426
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:I

    return v1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 0

    .line 13427
    iget p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A07:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 13428
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A07:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A07:I

    return v1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/4Z;)Landroid/os/Handler;
    .locals 0

    .line 13429
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A08:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 13430
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A09:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/MH;
    .locals 0

    .line 13431
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0V:Lcom/facebook/ads/redexgen/X/MH;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 13432
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/Ua;
    .locals 0

    .line 13433
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/Xm;
    .locals 0

    .line 13434
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Y:Lcom/facebook/ads/redexgen/X/Xm;

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/ZO;
    .locals 0

    .line 13435
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/ZP;
    .locals 0

    .line 13436
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0F:Lcom/facebook/ads/redexgen/X/ZP;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/LJ;
    .locals 0

    .line 13437
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/LJ;

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/bJ;
    .locals 0

    .line 13438
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/cT;
    .locals 0

    .line 13439
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Z:Lcom/facebook/ads/redexgen/X/cT;

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 13440
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/4Z;)Ljava/lang/Runnable;
    .locals 0

    .line 13441
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0o:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0M()V
    .locals 3

    .line 13442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 13443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    .line 13444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0P(Landroid/view/View;Landroid/content/Context;)V

    .line 13445
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0J:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13446
    .local v0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;I)V

    .line 13449
    return-void

    .line 13450
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0N()V
    .locals 6

    .line 13451
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0k:Lcom/facebook/ads/redexgen/X/Cw;

    sget v1, Lcom/facebook/ads/redexgen/X/4Z;->A0s:I

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Cw;->A08(IIZ)V

    .line 13452
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0k:Lcom/facebook/ads/redexgen/X/Cw;

    sget v3, Lcom/facebook/ads/redexgen/X/4Z;->A0x:I

    sget v2, Lcom/facebook/ads/redexgen/X/4Z;->A0x:I

    sget v1, Lcom/facebook/ads/redexgen/X/4Z;->A0x:I

    sget v0, Lcom/facebook/ads/redexgen/X/4Z;->A0x:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cw;->setPadding(IIII)V

    .line 13453
    sget v0, Lcom/facebook/ads/redexgen/X/4Z;->A0w:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13454
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0k:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13456
    return-void
.end method

.method private A0O()V
    .locals 5

    .line 13457
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0j:Lcom/facebook/ads/redexgen/X/D1;

    sget v3, Lcom/facebook/ads/redexgen/X/4Z;->A0u:I

    sget v2, Lcom/facebook/ads/redexgen/X/4Z;->A0u:I

    sget v1, Lcom/facebook/ads/redexgen/X/4Z;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/4Z;->A0u:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D1;->setPadding(IIII)V

    .line 13458
    sget v1, Lcom/facebook/ads/redexgen/X/4Z;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/4Z;->A0v:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13459
    .local v0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Xm;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/4Z;->A0t:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13460
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13461
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13462
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13463
    .local v1, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0j:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13465
    return-void
.end method

.method private A0P()V
    .locals 3

    .line 13466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0L:Z

    if-eqz v0, :cond_0

    .line 13467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0L:Z

    .line 13468
    const/16 v2, 0x18

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h(Ljava/lang/String;)V

    .line 13469
    :cond_0
    return-void
.end method

.method private A0Q()V
    .locals 5

    .line 13470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0L:Z

    if-eqz v0, :cond_0

    .line 13471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0L:Z

    .line 13472
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    .line 13473
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v4

    .line 13474
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13475
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/US;->AAs(Ljava/lang/String;Ljava/util/Map;)V

    .line 13476
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private A0R()V
    .locals 3

    .line 13477
    new-instance v2, Lcom/facebook/ads/redexgen/X/HD;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/HD;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13478
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0P(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 13479
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13480
    return-void
.end method

.method private A0S()V
    .locals 2

    .line 13481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 13482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    .line 13483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 13485
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0V()V

    .line 13486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 13487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;)V

    .line 13488
    return-void
.end method

.method private A0T()V
    .locals 10

    .line 13489
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    .line 13490
    .local v0, "mMediaView":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13491
    new-instance v0, Lcom/facebook/ads/redexgen/X/cH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cH;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13492
    :cond_0
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 13493
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 13494
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13495
    .local v1, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13496
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    .line 13498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 13499
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 13500
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/My;->A06(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13501
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 13502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 13503
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13504
    .local v2, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13505
    sget v3, Lcom/facebook/ads/redexgen/X/4Z;->A0r:I

    sget v2, Lcom/facebook/ads/redexgen/X/4Z;->A0r:I

    div-int/2addr v2, v1

    sget v1, Lcom/facebook/ads/redexgen/X/4Z;->A0r:I

    sget v0, Lcom/facebook/ads/redexgen/X/4Z;->A0w:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 13508
    new-instance v0, Lcom/facebook/ads/redexgen/X/bJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0B:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    .line 13509
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v8

    new-instance v9, Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/HH;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/bJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/a4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    .line 13510
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 13511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;)V

    .line 13512
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()V

    .line 13513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0M()V

    .line 13514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13515
    new-instance v1, Lcom/facebook/ads/redexgen/X/c9;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/c9;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 13516
    .local v3, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Y:Lcom/facebook/ads/redexgen/X/Xm;

    if-eqz v0, :cond_1

    .line 13518
    new-instance v1, Lcom/facebook/ads/redexgen/X/cA;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/cA;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 13519
    .local v4, "onToolbarClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Y:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xm;->setCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 13520
    .end local v3    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v4    # "onToolbarClickListener":Landroid/view/View$OnClickListener;
    :cond_1
    return-void
.end method

.method private A0U()V
    .locals 3

    .line 13521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0k:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 13522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0j:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 13523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 13525
    .local v0, "placeholderImagePlugin":Lcom/facebook/ads/redexgen/X/2p;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 13526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->setImage(Ljava/lang/String;)V

    .line 13527
    .end local v0    # "placeholderImagePlugin":Lcom/facebook/ads/redexgen/X/2p;
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2Y;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 13528
    return-void
.end method

.method private A0V()V
    .locals 5

    .line 13529
    const/4 v1, -0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13530
    .local v0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13531
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13532
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13534
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13535
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "4k5LHuHIhnjzZvLx7p7MkTP5YYpiYy7M"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 13536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13537
    return-void
.end method

.method private A0W()V
    .locals 3

    .line 13538
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0J:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13539
    .local v0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 13541
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13543
    return-void

    .line 13544
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method public static A0X()V
    .locals 4

    const/16 v0, 0x31

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "nVqp18ph7ekHb6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "wg1nH4uIQgdKmM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4Z;->A0o:[B

    return-void

    :array_0
    .array-data 1
        -0xft
        -0x6t
        -0x9t
        -0xft
        -0x7t
        -0x13t
        0x1t
        -0x3t
        0x3t
        0x0t
        -0xft
        -0xdt
        -0x44t
        -0x3ft
        -0x3dt
        -0x38t
        -0x39t
        -0x4et
        -0x40t
        -0x48t
        -0x39t
        -0x45t
        -0x3et
        -0x49t
        -0x1at
        -0x1ct
        -0x2at
        -0x1dt
        -0x2ct
        -0x23t
        -0x26t
        -0x2ct
        -0x24t
        -0x30t
        -0x29t
        -0x26t
        -0x23t
        -0x1bt
        -0x2at
        -0x1dt
        -0x2at
        -0x2bt
        -0x28t
        -0x36t
        -0x31t
        -0x3bt
        -0x30t
        -0x28t
        0x2ft
    .end array-data
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/Mp;)V
    .locals 6

    .line 13545
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/aV;->A00(Lcom/facebook/ads/redexgen/X/Mp;)F

    move-result v0

    float-to-double v2, v0

    .line 13546
    .local v0, "aspectRatio":D
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0E()Ljava/lang/String;

    move-result-object v1

    .line 13547
    .local v2, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 13548
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 13549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13550
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 13551
    :cond_1
    :goto_0
    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 13552
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A06:I

    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:I

    .line 13553
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0J:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:I

    .line 13554
    return-void

    .line 13555
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:I

    goto :goto_1

    .line 13556
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 13559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0P()V

    return-void
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 13560
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0V()V

    return-void
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 0

    .line 13561
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0f(Lcom/facebook/ads/redexgen/X/3Q;)V

    return-void
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/4Z;Ljava/lang/String;)V
    .locals 0

    .line 13562
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0g(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/4Z;Ljava/lang/String;)V
    .locals 0

    .line 13563
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0i(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/4Z;Z)V
    .locals 0

    .line 13564
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0j(Z)V

    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 3

    .line 13565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A02:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_0

    .line 13566
    return-void

    .line 13567
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13568
    new-instance v2, Lcom/facebook/ads/redexgen/X/HB;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/HB;-><init>(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3Q;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13569
    :cond_1
    return-void
.end method

.method private A0g(Ljava/lang/String;)V
    .locals 5

    .line 13570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 13571
    new-instance v3, Lcom/facebook/ads/redexgen/X/HG;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/HG;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 13572
    .local v0, "browserListener":Lcom/facebook/ads/redexgen/X/ZY;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A9n()V

    .line 13574
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13575
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U8;->A02(Landroid/content/Context;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "Q7cFr2gPd7sCHl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "KP59UR8sut1qsy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13576
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13577
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/LJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ZY;)V

    .line 13578
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/LJ;

    .line 13579
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/LJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cB;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/LJ;)V

    .line 13581
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13582
    .local v1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 13583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LJ;->loadUrl(Ljava/lang/String;)V

    .line 13585
    return-void

    .line 13586
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13587
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/LJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/ZY;)V

    goto :goto_0
.end method

.method private A0h(Ljava/lang/String;)V
    .locals 4

    .line 13588
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    .line 13589
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v3

    .line 13590
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13591
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0J:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 13592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0B:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 13593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/US;->AB8(Ljava/lang/String;Ljava/util/Map;)V

    .line 13594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13595
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13596
    .local v1, "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A04:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13597
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A05:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13598
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13599
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13600
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A06:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13601
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13602
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13604
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 13605
    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->ABH(Ljava/lang/String;Ljava/util/Map;)V

    .line 13606
    .end local v1    # "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private A0i(Ljava/lang/String;)V
    .locals 4

    .line 13607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1w()I

    move-result v0

    if-lez v0, :cond_2

    .line 13608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0M:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "wgFga5xemtqUSQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "c72BHAWejdxIIo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 13609
    return-void

    .line 13610
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0M:Z

    .line 13611
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0h(Ljava/lang/String;)V

    goto :goto_1

    .line 13612
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1V()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    if-eqz v3, :cond_3

    .line 13613
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0P()V

    .line 13614
    :cond_3
    :goto_1
    return-void

    .line 13615
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "tZ3pnOdiXKjC0M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WpWfv8IGy682Ke"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method private A0j(Z)V
    .locals 11

    .line 13616
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0R:Z

    if-nez v0, :cond_0

    .line 13617
    return-void

    .line 13618
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0K:Z

    .line 13619
    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    .line 13620
    iput v7, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:I

    .line 13621
    iput v7, p0, Lcom/facebook/ads/redexgen/X/4Z;->A07:I

    .line 13622
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0N:Z

    .line 13623
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0O:Z

    .line 13624
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0P:Z

    .line 13625
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0M:Z

    .line 13626
    :goto_0
    const/16 v2, 0x30

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(III)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eqz p1, :cond_1

    .line 13627
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    .line 13628
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bJ;->getY()F

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    new-array v0, v10, [F

    aput v2, v0, v7

    aput v1, v0, v9

    .line 13629
    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 13630
    .local v0, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    .line 13631
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    .line 13632
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    if-eqz p1, :cond_2

    div-int/lit8 v0, v0, 0x5

    :cond_2
    int-to-float v1, v0

    new-array v0, v10, [F

    aput v2, v0, v7

    aput v1, v0, v9

    .line 13633
    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 13634
    .local v5, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13635
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    .line 13636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getY()F

    move-result v0

    new-array v3, v10, [F

    aput v0, v3, v7

    const/4 v0, 0x0

    aput v0, v3, v9

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 13637
    .local v2, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    .line 13639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getHeight()I

    move-result v3

    .line 13640
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    if-eqz p1, :cond_3

    div-int/lit8 v0, v0, 0x5

    :cond_3
    filled-new-array {v3, v0}, [I

    move-result-object v0

    .line 13641
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 13642
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 13643
    .local v8, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cD;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13644
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13645
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13646
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v6, v0, v7

    aput-object v5, v0, v9

    aput-object v4, v0, v10

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13647
    if-eqz v8, :cond_4

    .line 13648
    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13649
    new-array v0, v9, [Landroid/animation/Animator;

    aput-object v8, v0, v7

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13650
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/cE;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/cE;-><init>(Lcom/facebook/ads/redexgen/X/4Z;Z)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13651
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0n:Z

    if-eqz v0, :cond_5

    .line 13652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0f(Landroid/animation/AnimatorSet;Z)V

    .line 13653
    :cond_5
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 13654
    return-void

    .line 13655
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A08:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private A0k(Z)V
    .locals 3

    .line 13656
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->setupLayoutConfiguration(Z)V

    .line 13657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 13658
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0K:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 13659
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    div-int/lit8 v0, v0, 0x5

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13660
    .local v0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13661
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13662
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setTranslationY(F)V

    .line 13663
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4Z;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13664
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0M()V

    .line 13665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()V

    .line 13666
    return-void

    .line 13667
    .end local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13668
    .restart local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13669
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0S()V

    goto :goto_0
.end method

.method private A0l(ZI)V
    .locals 2

    .line 13670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    xor-int/lit8 v0, p1, 0x1

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/LH;->ABc(ZI)V

    .line 13671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    if-eqz v0, :cond_0

    .line 13672
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->setCloseButtonVisibility(I)V

    .line 13673
    :cond_0
    return-void

    .line 13674
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private final A0m()Z
    .locals 1

    .line 13675
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0K:Z

    return v0
.end method

.method public static synthetic A0n(Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 0

    .line 13676
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0K:Z

    return p0
.end method

.method public static synthetic A0o(Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 0

    .line 13677
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Q:Z

    return p0
.end method

.method public static synthetic A0p(Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 0

    .line 13678
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0P:Z

    return p0
.end method

.method public static synthetic A0q(Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 0

    .line 13679
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0T:Z

    return p0
.end method

.method public static synthetic A0r(Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 0

    .line 13680
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0O:Z

    return p0
.end method

.method public static synthetic A0s(Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 0

    .line 13681
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0N:Z

    return p0
.end method

.method public static synthetic A0t(Lcom/facebook/ads/redexgen/X/4Z;Z)Z
    .locals 0

    .line 13682
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Q:Z

    return p1
.end method

.method public static synthetic A0u(Lcom/facebook/ads/redexgen/X/4Z;Z)Z
    .locals 0

    .line 13683
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0P:Z

    return p1
.end method

.method public static synthetic A0v(Lcom/facebook/ads/redexgen/X/4Z;Z)Z
    .locals 0

    .line 13684
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0T:Z

    return p1
.end method

.method public static synthetic A0w(Lcom/facebook/ads/redexgen/X/4Z;Z)Z
    .locals 0

    .line 13685
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0O:Z

    return p1
.end method

.method public static synthetic A0x(Lcom/facebook/ads/redexgen/X/4Z;Z)Z
    .locals 0

    .line 13686
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0N:Z

    return p1
.end method

.method public static synthetic A0y(Lcom/facebook/ads/redexgen/X/4Z;Z)Z
    .locals 0

    .line 13687
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0L:Z

    return p1
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/LJ;)V
    .locals 5

    .line 13752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 13753
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0n:Z

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZO;

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/facebook/ads/redexgen/X/ZO;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/webkit/WebView;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    .line 13754
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0m:Z

    if-eqz v0, :cond_0

    .line 13755
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0R:Z

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0l(ZI)V

    .line 13756
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZO;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ZZ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/ZZ;)V

    .line 13757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 13758
    const/4 v0, -0x2

    const/4 v4, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13759
    .local v0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 13760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/HF;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->setListener(Lcom/facebook/ads/redexgen/X/ZN;)V

    .line 13761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cC;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13762
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0F:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 13764
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZP;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ZP;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0F:Lcom/facebook/ads/redexgen/X/ZP;

    .line 13765
    sget v0, Lcom/facebook/ads/redexgen/X/4Z;->A0q:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13766
    .local v1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0F:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13767
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 5

    .line 13768
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0J:Z

    .line 13769
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0K:Z

    .line 13770
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    .line 13771
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A06:I

    .line 13772
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 13773
    .local v0, "size":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    .line 13774
    const/16 v2, 0x2a

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/dL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 13775
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 13776
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_2

    .line 13777
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    .line 13778
    .local v2, "windowMetrics":Landroid/view/WindowMetrics;
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 13779
    .end local v2    # "windowMetrics":Landroid/view/WindowMetrics;
    .end local v2
    :cond_0
    :goto_1
    iget v0, v3, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_1

    iget v0, v3, Landroid/graphics/Point;->y:I

    :goto_2
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:I

    .line 13780
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:I

    .line 13781
    return-void

    .line 13782
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:I

    goto :goto_2

    .line 13783
    :cond_2
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 13784
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_1

    .line 13785
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 4

    .line 13688
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/bJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bJ;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "gDqV8VnRL5n4dziTmRcIoSoDocYisV3G"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 13690
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    return-object v0
.end method

.method public final A1B()V
    .locals 8

    .line 13691
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0Q()V

    .line 13692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0W:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->AJj(Landroid/view/View;)V

    .line 13694
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0a:Lcom/facebook/ads/redexgen/X/EG;

    if-eqz v0, :cond_2

    .line 13695
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0a:Lcom/facebook/ads/redexgen/X/EG;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "qZF2LURQ0N2avpQsVigAjVMCIAfnIk4T"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/EG;->A07()V

    .line 13696
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_3

    .line 13697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    .line 13698
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x6

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0h:Lcom/facebook/ads/redexgen/X/DN;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0g:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0f:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0i:Lcom/facebook/ads/redexgen/X/DM;

    aput-object v0, v2, v4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0d:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0e:Lcom/facebook/ads/redexgen/X/DV;

    aput-object v0, v2, v1

    .line 13699
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 13700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 13701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0Z()V

    .line 13702
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0c:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A0p()V

    .line 13703
    new-array v1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0k:Lcom/facebook/ads/redexgen/X/Cw;

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0j:Lcom/facebook/ads/redexgen/X/D1;

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 13704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    .line 13705
    return-void
.end method

.method public final A1D()V
    .locals 0

    .line 13706
    return-void
.end method

.method public final A1E()V
    .locals 3

    .line 13707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVolume(F)V

    .line 13708
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x14

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 13709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A02()I

    move-result v2

    .line 13710
    .local v0, "secondsForNextCta":I
    if-eqz v2, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0U:I

    if-lt v2, v0, :cond_2

    .line 13711
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Y:Lcom/facebook/ads/redexgen/X/Xm;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 13712
    :cond_1
    :goto_1
    return-void

    .line 13713
    :cond_2
    if-lez v2, :cond_1

    .line 13714
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0Y:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressSpinnerInvisible(Z)V

    .line 13715
    new-instance v1, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/HE;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(ILcom/facebook/ads/redexgen/X/Wc;)V

    .line 13716
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    goto :goto_1

    .line 13717
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A1F(Z)V
    .locals 1

    .line 13718
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0R:Z

    .line 13719
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0l(ZI)V

    .line 13720
    return-void
.end method

.method public final A1G(Z)V
    .locals 3

    .line 13721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13722
    return-void

    .line 13723
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getVideoStartReason()Lcom/facebook/ads/redexgen/X/db;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0I:Lcom/facebook/ads/redexgen/X/db;

    .line 13724
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0S:Z

    .line 13725
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    const/4 v1, 0x0

    const/16 v0, 0xd

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 13726
    return-void
.end method

.method public final A1H(Z)V
    .locals 4

    .line 13727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0I:Lcom/facebook/ads/redexgen/X/db;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0p:[Ljava/lang/String;

    const-string v1, "XPxqC5lbhdZAQT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OGUEg1S7IFb9ga"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0S:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 13728
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0b:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0I:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x13

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 13729
    :cond_2
    return-void
.end method

.method public final A1I()Z
    .locals 1

    .line 13730
    const/4 v0, 0x0

    return v0
.end method

.method public final A1J()Z
    .locals 1

    .line 13731
    const/4 v0, 0x0

    return v0
.end method

.method public final A1K()Z
    .locals 1

    .line 13732
    const/4 v0, 0x1

    return v0
.end method

.method public final A1L()Z
    .locals 1

    .line 13733
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0m()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/My;
    .locals 1

    .line 13734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0D:Lcom/facebook/ads/redexgen/X/My;

    return-object v0
.end method

.method public getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/cR;
    .locals 8

    .line 13735
    new-instance v1, Lcom/facebook/ads/redexgen/X/cR;

    sget v3, Lcom/facebook/ads/redexgen/X/cR;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13736
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13737
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A05(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13738
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/My;->A08(Z)I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13739
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/cR;-><init>(ZILcom/facebook/ads/redexgen/X/My;ZILjava/lang/String;)V

    .line 13740
    return-object v1
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/XH;
    .locals 1

    .line 13741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 13742
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Hr;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 13743
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0k(Z)V

    .line 13744
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->setupLayoutConfiguration(Z)V

    .line 13745
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0V()V

    .line 13746
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 13747
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Hr;->onWindowFocusChanged(Z)V

    .line 13748
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 13749
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1H(Z)V

    .line 13750
    :goto_0
    return-void

    .line 13751
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1G(Z)V

    goto :goto_0
.end method
