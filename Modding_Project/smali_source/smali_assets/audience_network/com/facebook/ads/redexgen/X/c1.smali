.class public final Lcom/facebook/ads/redexgen/X/c1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bz;,
        Lcom/facebook/ads/redexgen/X/I3;,
        Lcom/facebook/ads/redexgen/X/c0;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/bt;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/I3;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/bg;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/US;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2556
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wHWy6mJnObE4TdegwzR1XIqaiMp2qzo2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2kKTv183xGQoCJ4bH8MOQBKEcrYPubr8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yAnU2m0QEWVpmJNiipOenY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2CWVvRtjqdC7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Y1Dj6sRIbzGHXk3FXnyOisKccxY5ExT7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AAUb4pYdx4XqEM8CotKihUFr9wNvuug2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KLTFv3N2v474XPM9CBPbC4npqkPjZQN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uonDorlDhYGoL6YzDZYQroxkAXvFfbHU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c1;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/bt;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/bg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77506
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 77507
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A00:Ljava/lang/ref/WeakReference;

    .line 77508
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    .line 77509
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A07:Ljava/lang/ref/WeakReference;

    .line 77510
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/c1;->A04:Lcom/facebook/ads/redexgen/X/bg;

    .line 77511
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/c1;->A05:Ljava/lang/String;

    .line 77512
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/c1;->A06:Ljava/lang/String;

    .line 77513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A02:Z

    .line 77514
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/c1;)Lcom/facebook/ads/redexgen/X/bg;
    .locals 0

    .line 77515
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c1;->A04:Lcom/facebook/ads/redexgen/X/bg;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/c1;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xc

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/c1;)Ljava/lang/String;
    .locals 0

    .line 77516
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c1;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77517
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 77518
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77519
    .local v1, "extraDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77520
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77521
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77522
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 77523
    :cond_0
    return-object v2
.end method

.method private A04()V
    .locals 3

    .line 77524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I3;

    .line 77525
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v0, :cond_0

    .line 77526
    return-void

    .line 77527
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I3;->close()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    .line 77528
    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const-string v1, "rLuDNCDiUJCt8jrcDw8nHa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "w5dFeIXZRXYPRcNf7kYaeIakMq27def"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 1

    .line 77529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I3;

    .line 77530
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v0, :cond_0

    .line 77531
    return-void

    .line 77532
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I3;->A9c()V

    .line 77533
    return-void
.end method

.method private A06()V
    .locals 1

    .line 77534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I3;

    .line 77535
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v0, :cond_0

    .line 77536
    return-void

    .line 77537
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I3;->AAd()V

    .line 77538
    return-void
.end method

.method private A07()V
    .locals 1

    .line 77539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5w()V

    .line 77540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A02:Z

    .line 77541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I3;

    .line 77542
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v0, :cond_0

    .line 77543
    return-void

    .line 77544
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I3;->AJS()V

    .line 77545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ue;->ACx()V

    .line 77547
    :cond_1
    return-void
.end method

.method private A08()V
    .locals 1

    .line 77548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I3;

    .line 77549
    .local v0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v0, :cond_0

    .line 77550
    return-void

    .line 77551
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I3;->ADM()V

    .line 77552
    return-void
.end method

.method public static A09()V
    .locals 4

    const/16 v0, 0x67

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const-string v1, "q8I1zS5uUBp9u7UYsB3eM38aYjAC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/c1;->A08:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x79t
        -0x6dt
        -0x6ft
        -0x6ft
        -0x7bt
        -0x6et
        -0x78t
        -0x6et
        -0x6dt
        -0x6ct
        -0x71t
        -0x5dt
        -0x66t
        -0x5et
        0x70t
        0x7ft
        0x78t
        0x6bt
        -0x5dt
        -0x4et
        -0x55t
        -0x55t
        -0x5et
        -0x57t
        -0x64t
        -0x60t
        -0x54t
        -0x5ft
        -0x5et
        -0x56t
        -0x47t
        -0x4et
        -0x4et
        -0x57t
        -0x50t
        -0x5dt
        -0x4ft
        -0x57t
        -0x49t
        -0x49t
        -0x5bt
        -0x55t
        -0x57t
        -0xft
        0x0t
        -0x7t
        -0x7t
        -0x10t
        -0x9t
        -0x16t
        -0x1t
        0x4t
        -0x5t
        -0x10t
        -0x12t
        -0x18t
        -0x4t
        -0x38t
        -0x37t
        -0x48t
        -0x3et
        -0x43t
        -0x7ft
        0x72t
        -0x7at
        -0x7ct
        0x76t
        0x75t
        0x53t
        -0x76t
        0x66t
        -0x7ct
        0x76t
        -0x7dt
        -0x1ft
        -0x1et
        -0x31t
        -0x20t
        -0x1et
        -0x2dt
        -0x2et
        -0x50t
        -0x19t
        -0x3dt
        -0x1ft
        -0x2dt
        -0x20t
        -0xet
        -0xdt
        -0x20t
        -0xdt
        -0x1ct
        -0x27t
        -0x2at
        -0x30t
        -0x51t
        -0x37t
        -0x23t
        -0x54t
        -0x69t
        -0x5et
        -0x55t
        -0x65t
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/bt;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77553
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77554
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 77555
    .local v1, "sp":Landroid/content/SharedPreferences;
    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77556
    .local v2, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77557
    .local v4, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77558
    .local v5, "storageValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v6, v0

    :cond_0
    invoke-virtual {p1, v5, v6}, Lcom/facebook/ads/redexgen/X/bt;->A0g(Ljava/lang/String;Ljava/lang/String;)V

    .line 77559
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/bt;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77560
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77561
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x62

    const/4 v1, 0x5

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77562
    .local v1, "value":Ljava/lang/String;
    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77563
    .local v2, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77564
    .local v3, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77565
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77566
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/bt;->A0f(Ljava/lang/String;)V

    .line 77567
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/bz;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77568
    sget-object v1, Lcom/facebook/ads/redexgen/X/by;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/bz;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 77569
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/bt;

    .line 77570
    .local v0, "webViewController":Lcom/facebook/ads/redexgen/X/bt;
    if-nez v2, :cond_1

    .line 77571
    return-void

    .line 77572
    :pswitch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/c1;->A0M(Lorg/json/JSONObject;)V

    .line 77573
    goto :goto_0

    .line 77574
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c1;->A08()V

    .line 77575
    goto :goto_0

    .line 77576
    :pswitch_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/c1;->A0J(Lorg/json/JSONObject;)V

    .line 77577
    goto :goto_0

    .line 77578
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/c1;->A0D(Lcom/facebook/ads/redexgen/X/bz;Ljava/lang/String;)V

    .line 77579
    goto :goto_0

    .line 77580
    :pswitch_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c1;->A05()V

    .line 77581
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/LH;->A68(Ljava/lang/String;)V

    .line 77582
    goto :goto_0

    .line 77583
    :pswitch_6
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const-string v1, "ti0FJd6QzsmsCUgFEJNk2tGDtWFDX3UL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2bsL1IjRD3bcdVR1Mvy0yjSySADV0GcP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 77584
    :pswitch_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/c1;->A0L(Lorg/json/JSONObject;)V

    .line 77585
    goto :goto_0

    .line 77586
    :pswitch_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/c1;->A0K(Lorg/json/JSONObject;)V

    .line 77587
    goto :goto_0

    .line 77588
    :pswitch_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c1;->A07()V

    .line 77589
    goto :goto_0

    .line 77590
    :pswitch_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c1;->A04()V

    .line 77591
    goto :goto_0

    .line 77592
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c1;->A06()V

    .line 77593
    goto :goto_0

    .line 77594
    :pswitch_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/c1;->A0I(Lorg/json/JSONObject;)V

    .line 77595
    goto :goto_0

    .line 77596
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/by;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/bz;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 77597
    :goto_1
    return-void

    .line 77598
    :pswitch_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c1;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/bt;->A0i(Ljava/util/Map;)V

    goto :goto_1

    .line 77599
    :pswitch_e
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/c1;->A0A(Lcom/facebook/ads/redexgen/X/bt;Ljava/lang/String;)V

    .line 77600
    goto :goto_1

    .line 77601
    :pswitch_f
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/c1;->A0B(Lcom/facebook/ads/redexgen/X/bt;Ljava/lang/String;)V

    .line 77602
    goto :goto_1

    .line 77603
    :pswitch_10
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/bt;->A0R()V

    .line 77604
    goto :goto_1

    .line 77605
    :pswitch_11
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/bt;->A0S()V

    .line 77606
    goto :goto_1

    .line 77607
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/bz;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/I3;

    .line 77609
    .local v0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v2, :cond_0

    .line 77610
    return-void

    .line 77611
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/by;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/bz;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 77612
    :goto_0
    return-void

    .line 77613
    :pswitch_0
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/c1;->A0E(Lcom/facebook/ads/redexgen/X/I3;Ljava/lang/String;)V

    goto :goto_0

    .line 77614
    :pswitch_1
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/c1;->A0F(Lcom/facebook/ads/redexgen/X/I3;Ljava/lang/String;)V

    .line 77615
    goto :goto_0

    .line 77616
    :pswitch_2
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/c1;->A0G(Lcom/facebook/ads/redexgen/X/I3;Ljava/lang/String;)V

    .line 77617
    goto :goto_0

    .line 77618
    :pswitch_3
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/I3;->AFG()V

    .line 77619
    goto :goto_0

    .line 77620
    :pswitch_4
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/I3;->ADQ()V

    .line 77621
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/I3;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77622
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77623
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x57

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 77624
    .local v1, "STATE_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 77625
    .local v2, "state":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/I3;->AEF(Z)V

    .line 77626
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/I3;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77627
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77628
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x3e

    const/16 v1, 0xc

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 77629
    .local v1, "PAUSED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 77630
    .local v2, "pausedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/I3;->AFn(Z)V

    .line 77631
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/I3;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77632
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77633
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x4a

    const/16 v1, 0xd

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 77634
    .local v1, "STARTED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 77635
    .local v2, "startedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/I3;->AFp(Z)V

    .line 77636
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/c1;Lcom/facebook/ads/redexgen/X/bz;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77637
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/c1;->A0C(Lcom/facebook/ads/redexgen/X/bz;Ljava/lang/String;)V

    return-void
.end method

.method private A0I(Lorg/json/JSONObject;)V
    .locals 4

    .line 77638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/I3;

    .line 77639
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v3, :cond_0

    .line 77640
    return-void

    .line 77641
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77642
    .local v1, "productUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77643
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/I3;->A9X()V

    .line 77644
    :goto_0
    return-void

    .line 77645
    :cond_1
    invoke-interface {v3, v1}, Lcom/facebook/ads/redexgen/X/I3;->A9Y(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0J(Lorg/json/JSONObject;)V
    .locals 3

    .line 77646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I3;

    .line 77647
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v0, :cond_0

    .line 77648
    return-void

    .line 77649
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 77650
    .local v1, "action":Ljava/lang/String;
    return-void
.end method

.method private A0K(Lorg/json/JSONObject;)V
    .locals 5

    .line 77651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/US;

    .line 77652
    .local v0, "adEventManager":Lcom/facebook/ads/redexgen/X/US;
    if-nez v3, :cond_0

    .line 77653
    return-void

    .line 77654
    :cond_0
    const/16 v4, 0x2b

    sget-object v1, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const-string v1, "hDImTkFK3KoL7AYoPxXIP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0xb

    const/16 v0, 0x7f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77655
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77656
    return-void

    .line 77657
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A06:Ljava/lang/String;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 77658
    .local v2, "handler":Lcom/facebook/ads/redexgen/X/Ua;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/c1;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A05(Ljava/lang/String;Ljava/util/Map;)V

    .line 77659
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L(Lorg/json/JSONObject;)V
    .locals 4

    .line 77660
    const/16 v2, 0x12

    const/16 v1, 0xb

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 77661
    .local v0, "code":I
    if-ne v3, v0, :cond_0

    .line 77662
    return-void

    .line 77663
    :cond_0
    const/16 v2, 0x1d

    const/16 v1, 0xe

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77664
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77665
    return-void

    .line 77666
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/LH;->AAw(ILjava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 77667
    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const-string v1, "NCNoRnun1G3dlwmqoYaN2uZPLfccAkgr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "12RLbgldZ9TmNXvaOMkOvzOeimlYTJg9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0M(Lorg/json/JSONObject;)V
    .locals 5

    .line 77668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/I3;

    .line 77669
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/I3;
    if-nez v3, :cond_0

    .line 77670
    return-void

    .line 77671
    :cond_0
    const/16 v2, 0x5c

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c1;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/c1;->A09:[Ljava/lang/String;

    const-string v1, "rydiERFHLfFXOcJD9tadKbqyFej0NUPk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "tiiagSBkZ4Sc0Tn3kexlzzs5G1JfuHdZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77672
    .local v1, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 77673
    return-void

    .line 77674
    :cond_1
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/I3;->AG4(Ljava/lang/String;)V

    .line 77675
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/I3;)V
    .locals 1

    .line 77676
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A01:Ljava/lang/ref/WeakReference;

    .line 77677
    return-void
.end method

.method public final A0O()Z
    .locals 1

    .line 77678
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A02:Z

    return v0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 77679
    new-instance v0, Lcom/facebook/ads/redexgen/X/bx;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bx;-><init>(Lcom/facebook/ads/redexgen/X/c1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 77680
    return-void
.end method
