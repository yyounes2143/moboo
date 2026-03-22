.class public final Lcom/facebook/ads/redexgen/X/7Q;
.super Lcom/facebook/ads/redexgen/X/im;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wh;

.field public final A01:Landroid/net/Uri;

.field public final A02:Lcom/facebook/ads/redexgen/X/N3;

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 433
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "b4EbQiKGBOPn48tIsiPL5n4N5SxNZ1EN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C4qAvqPXqcx1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "av0PnThHX1ufh2ncI3f6iPLWfGZcgSDj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "l1hdtvJdt41N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aFghpyqA523JYmrsO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "P4eeegJbz09MXnMZrJhy5IVHeFKKR7Ef"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fwPno9KqPJ0g1dx57vycq8IipA21WGGJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ava7qu9S1KN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7Q;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7Q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7Q;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/MO;ZLcom/facebook/ads/redexgen/X/N3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Lcom/facebook/ads/redexgen/X/US;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/MO;",
            "Z",
            "Lcom/facebook/ads/redexgen/X/N3;",
            ")V"
        }
    .end annotation

    .line 21568
    .local p5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v3, p3

    move v5, p7

    move-object v2, p2

    move-object v4, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/im;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MO;Z)V

    .line 21569
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7Q;->A01:Landroid/net/Uri;

    .line 21570
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7Q;->A03:Ljava/util/Map;

    .line 21571
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/7Q;->A02:Lcom/facebook/ads/redexgen/X/N3;

    .line 21572
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/MM;)Landroid/content/Intent;
    .locals 11

    .line 21573
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 21574
    return-object v10

    .line 21575
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A03()Ljava/lang/String;

    move-result-object v3

    .line 21576
    .local v0, "appLinkUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ww;->A04(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 21577
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const-string v1, "ldjYBpnAKJ5YKanQesg35Gt0OkPWSzAG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/7Q;->A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 21578
    return-object v10

    .line 21579
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21580
    const/16 v2, 0xfa

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v2, 0xfe

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21581
    :cond_3
    const/16 v2, 0x3e

    const/16 v1, 0x1a

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 21582
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 21583
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_5

    .line 21584
    return-object v10

    .line 21585
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const-string v1, "P0UyeT8Oj9P4H3GWuZ6UwWdLOtPXQiGU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 21586
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21587
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7Q;->A01(Lcom/facebook/ads/redexgen/X/MM;)Landroid/content/Intent;

    move-result-object v4

    .line 21588
    .local v3, "unresolvedAppIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000

    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 21589
    .local v4, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_a

    .line 21590
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 21591
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A05()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const-string v1, "zQ3PtZjh8GquAUsdZUz15LBCi8uwCZq5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21592
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21593
    :cond_a
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_d

    .line 21594
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/7Q;->A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 21595
    return-object v10

    .line 21596
    :cond_c
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21597
    :cond_d
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/MM;)Landroid/content/Intent;
    .locals 4

    .line 21598
    const/16 v2, 0x58

    const/16 v1, 0x1a

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21599
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21600
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21601
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21602
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A05()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21603
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21604
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21605
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MM;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 21606
    :cond_1
    return-object v3
.end method

.method private final A02()Landroid/net/Uri;
    .locals 5

    .line 21607
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7Q;->A01:Landroid/net/Uri;

    const/16 v2, 0xdb

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21608
    .local v0, "storeUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21609
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 21610
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7Q;->A01:Landroid/net/Uri;

    const/16 v2, 0xd3

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21611
    .local v1, "storeId":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    .line 21612
    const/16 v2, 0x7e

    const/16 v1, 0x16

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21613
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/ME;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/W9;
        }
    .end annotation

    .line 21614
    new-instance v4, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    .line 21615
    .local v0, "uriLauncher":Lcom/facebook/ads/redexgen/X/WN;
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 21616
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7Q;->A02()Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Q;->A03:Ljava/util/Map;

    .line 21617
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A06(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/W9; {:try_start_0 .. :try_end_0} :catch_0

    .line 21618
    .local v1, "ex":Lcom/facebook/ads/redexgen/X/W9;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/16 v1, 0x1b

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Q;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21619
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7Q;->A01:Landroid/net/Uri;

    const/16 v2, 0xe4

    const/16 v1, 0x16

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21620
    .local v2, "fallbackUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 21621
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 21622
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    .line 21623
    invoke-static {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0E(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)V

    .line 21624
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7Q;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/MM;",
            ">;"
        }
    .end annotation

    .line 21625
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7Q;->A01:Landroid/net/Uri;

    const/16 v2, 0x72

    const/16 v1, 0xc

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21626
    .local v0, "appsiteDataString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x35

    const/4 v1, 0x2

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21627
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 21628
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21629
    .local v1, "appSiteDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/action/AppSiteData;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21630
    .local v2, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x37

    const/4 v1, 0x7

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 21631
    .local v3, "appsiteDataArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 21632
    const/4 v1, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 21633
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MM;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/MM;

    move-result-object v0

    .line 21634
    .local v5, "appSiteData":Lcom/facebook/ads/redexgen/X/MM;
    if-eqz v0, :cond_2

    .line 21635
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21636
    .end local v5    # "appSiteData":Lcom/facebook/ads/redexgen/X/MM;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21637
    :catch_0
    move-exception v7

    .line 21638
    .local v2, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 21639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A24:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 21640
    const/16 v2, 0xcc

    const/4 v1, 0x7

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 21641
    sget-object v3, Lcom/facebook/ads/redexgen/X/7Q;->A06:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21642
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    return-object v6
.end method

.method private final A06()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 21643
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7Q;->A05()Ljava/util/List;

    move-result-object v0

    .line 21644
    .local v0, "appSiteDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/action/AppSiteData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21645
    .local v1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz v0, :cond_1

    .line 21646
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MM;

    .line 21647
    .local p0, "appSiteData":Lcom/facebook/ads/redexgen/X/MM;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A00(Lcom/facebook/ads/redexgen/X/MM;)Landroid/content/Intent;

    move-result-object v0

    .line 21648
    .local p1, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 21649
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21650
    :cond_1
    return-object v2
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x108

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7Q;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x6ft
        0x6ft
        0x72t
        0x6ft
        0x3dt
        0x6dt
        0x7ct
        0x6ft
        0x6et
        0x74t
        0x73t
        0x7at
        0x3dt
        0x7ct
        0x6dt
        0x6dt
        0x6et
        0x74t
        0x69t
        0x78t
        0x42t
        0x79t
        0x7ct
        0x69t
        0x7ct
        0x33t
        0x14t
        0x1ct
        0x19t
        0x10t
        0x11t
        0x55t
        0x1t
        0x1at
        0x55t
        0x1at
        0x5t
        0x10t
        0x1bt
        0x55t
        0x18t
        0x14t
        0x7t
        0x1et
        0x10t
        0x1t
        0x55t
        0x0t
        0x7t
        0x19t
        0x4ft
        0x55t
        0x33t
        0x35t
        0x8t
        0x7t
        0xdt
        0x1bt
        0x6t
        0x0t
        0xdt
        0x3ft
        0x30t
        0x3at
        0x2ct
        0x31t
        0x37t
        0x3at
        0x70t
        0x37t
        0x30t
        0x2at
        0x3bt
        0x30t
        0x2at
        0x70t
        0x3ft
        0x3dt
        0x2at
        0x37t
        0x31t
        0x30t
        0x70t
        0x1at
        0x17t
        0x1ft
        0x12t
        0x5t
        0xat
        0x0t
        0x16t
        0xbt
        0xdt
        0x0t
        0x4at
        0xdt
        0xat
        0x10t
        0x1t
        0xat
        0x10t
        0x4at
        0x5t
        0x7t
        0x10t
        0xdt
        0xbt
        0xat
        0x4at
        0x32t
        0x2dt
        0x21t
        0x33t
        0x22t
        0x33t
        0x33t
        0x30t
        0x2at
        0x37t
        0x26t
        0x1ct
        0x27t
        0x22t
        0x37t
        0x22t
        0x41t
        0x4dt
        0x5et
        0x47t
        0x49t
        0x58t
        0x16t
        0x3t
        0x3t
        0x48t
        0x49t
        0x58t
        0x4dt
        0x45t
        0x40t
        0x5ft
        0x13t
        0x45t
        0x48t
        0x11t
        0x9t
        0x5ft
        0x1bt
        0x4t
        0x11t
        0x1at
        0x11t
        0x10t
        0x2bt
        0x10t
        0x11t
        0x11t
        0x4t
        0x18t
        0x1dt
        0x1at
        0x1ft
        0x7dt
        0x62t
        0x77t
        0x7ct
        0x77t
        0x76t
        0x4dt
        0x61t
        0x66t
        0x7dt
        0x60t
        0x77t
        0x4dt
        0x74t
        0x73t
        0x7et
        0x7et
        0x70t
        0x73t
        0x71t
        0x79t
        0x4dt
        0x67t
        0x60t
        0x7et
        0x7bt
        0x64t
        0x71t
        0x7at
        0x71t
        0x70t
        0x4bt
        0x67t
        0x60t
        0x7bt
        0x66t
        0x71t
        0x4bt
        0x61t
        0x66t
        0x78t
        0x64t
        0x75t
        0x66t
        0x67t
        0x7dt
        0x7at
        0x73t
        0x51t
        0x56t
        0x4dt
        0x50t
        0x47t
        0x7dt
        0x4bt
        0x46t
        0x38t
        0x3ft
        0x24t
        0x39t
        0x2et
        0x14t
        0x3et
        0x39t
        0x27t
        0x51t
        0x56t
        0x4dt
        0x50t
        0x47t
        0x7dt
        0x57t
        0x50t
        0x4et
        0x7dt
        0x55t
        0x47t
        0x40t
        0x7dt
        0x44t
        0x43t
        0x4et
        0x4et
        0x40t
        0x43t
        0x41t
        0x49t
        0x3bt
        0x2at
        0x23t
        0x75t
        0x17t
        0x6t
        0xft
        0x13t
        0x11t
        0xct
        0xet
        0x13t
        0x17t
        0x59t
    .end array-data
.end method

.method private A08()Z
    .locals 4

    .line 21651
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7Q;->A06()Ljava/util/List;

    move-result-object v0

    .line 21652
    .local v0, "appLaunchIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 21653
    return v3

    .line 21654
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 21655
    .local v3, "appLaunchIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WB;->A0D(Lcom/facebook/ads/redexgen/X/dL;Landroid/content/Intent;)Z

    move-result v0

    .line 21656
    .local p0, "result":Z
    if-eqz v0, :cond_1

    .line 21657
    const/4 v0, 0x1

    return v0

    .line 21658
    :cond_2
    return v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)Z
    .locals 2

    .line 21659
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 21660
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A23(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 21661
    :goto_0
    return v0

    .line 21662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/ME;
    .locals 6

    .line 21663
    sget-object v5, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    .line 21664
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ME;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/im;->A03:Z

    if-eqz v0, :cond_0

    .line 21665
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7Q;->A0M()Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v5

    .line 21666
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7Q;->A03:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21667
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7Q;->A03:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xbc

    const/16 v1, 0x10

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7Q;->A05:[Ljava/lang/String;

    const-string v1, "kOq5WVrOOgnK8qBpA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v3, v5}, Lcom/facebook/ads/redexgen/X/im;->A0J(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/ME;)V

    .line 21668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Q;->A02:Lcom/facebook/ads/redexgen/X/N3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A06(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 21669
    return-object v5
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/ME;
    .locals 5

    .line 21670
    sget-object v4, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    .line 21671
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ME;
    const/16 v2, 0x94

    const/16 v1, 0xf

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 21672
    .local v1, "redirectionAction":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Q;->A01:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/im;->A0K(Landroid/net/Uri;)Z

    move-result v1

    .line 21673
    .local v2, "redirectedToApp":Z
    if-nez v1, :cond_0

    .line 21674
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7Q;->A08()Z

    move-result v1

    .line 21675
    :cond_0
    if-nez v1, :cond_2

    .line 21676
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7Q;->A03()Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v4

    .line 21677
    sget-object v1, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    if-eq v4, v1, :cond_1

    .line 21678
    const/16 v3, 0xbc

    const/16 v2, 0x10

    const/16 v1, 0x3d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21679
    :cond_1
    const/16 v3, 0xa3

    const/16 v2, 0x19

    const/16 v1, 0x3b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/7Q;->A04(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21680
    .local v3, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/ME;->A04:Lcom/facebook/ads/redexgen/X/ME;

    .line 21681
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Q;->A03:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21682
    return-object v4
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/Wh;)V
    .locals 0

    .line 21683
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7Q;->A00:Lcom/facebook/ads/redexgen/X/Wh;

    .line 21684
    return-void
.end method
