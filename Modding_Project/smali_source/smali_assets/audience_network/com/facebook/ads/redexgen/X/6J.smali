.class public final Lcom/facebook/ads/redexgen/X/6J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/WO;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/cu;

.field public final A02:Lcom/facebook/ads/redexgen/X/SZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 392
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "u3ex4KQMIW041lf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3AptpGjhH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gmUldlaQs1iDW8SjyulR1SveXx4W0WHx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1qDQcvNZxrP96rda7KCur1LyuVNWU8kp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CAWPS90lsy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t8qLCZBFlDEhGKoHyGYF6SljofbMSV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "olmaGtOYwcY5nta5it0d5AQEWYClhN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QuuHkAQHaV7iF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6J;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6J;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 1

    .line 17610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Z

    .line 17612
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 17613
    new-instance v0, Lcom/facebook/ads/redexgen/X/SZ;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    .line 17614
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6J;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17615
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 17616
    .local v0, "eventsArray":Lorg/json/JSONArray;
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 17617
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17618
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 17619
    .local v1, "eventObject":Lorg/json/JSONObject;
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A04:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17620
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A09:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0x8

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17621
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A0A:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17622
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A08:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    .line 17623
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A03(D)Ljava/lang/String;

    move-result-object v3

    .line 17624
    const/16 v2, 0x4e

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17625
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A07:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    .line 17626
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 17627
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A03(D)Ljava/lang/String;

    move-result-object v3

    .line 17628
    const/16 v2, 0x42

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17629
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A06:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    .line 17630
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 17631
    const/16 v2, 0x38

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17632
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A03:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17633
    .local v2, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17634
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A02:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Lcom/facebook/ads/redexgen/X/cu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A04()Lcom/facebook/ads/redexgen/X/ST;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ST;->A8F()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17636
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17637
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    .end local v2    # "data":Ljava/lang/String;
    goto/16 :goto_0

    .line 17638
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 17639
    :cond_1
    return-object v5
.end method

.method private A02(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17640
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 17641
    .local v0, "eventsArray":Lorg/json/JSONArray;
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 17642
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17643
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 17644
    .local v1, "eventObject":Lorg/json/JSONObject;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17645
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0x8

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17646
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17647
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4e

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17648
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x42

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17649
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x38

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17650
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17651
    .local v2, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17652
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Lcom/facebook/ads/redexgen/X/cu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A04()Lcom/facebook/ads/redexgen/X/ST;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ST;->A8F()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17654
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17655
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    .end local v2    # "data":Ljava/lang/String;
    goto/16 :goto_0

    .line 17656
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 17657
    :cond_1
    return-object v5
.end method

.method public static A03(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17658
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17659
    .local v0, "tokensObject":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17660
    sget-object v0, Lcom/facebook/ads/redexgen/X/cs;->A03:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    .line 17661
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/cs;->A02:Lcom/facebook/ads/redexgen/X/SX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A00:I

    .line 17662
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17663
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 17664
    :cond_0
    return-object v2
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6J;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x7t
        0x6t
        -0x41t
        0xct
        -0x48t
        -0x4t
        -0x3t
        0x4t
        -0x3t
        0xct
        -0x3t
        -0x48t
        -0x7t
        0xct
        0xct
        -0x3t
        0x5t
        0x8t
        0xct
        0xbt
        -0x48t
        -0x3t
        0x10t
        -0x5t
        -0x3t
        -0x3t
        -0x4t
        -0x3t
        -0x4t
        -0x48t
        -0x3t
        0xet
        -0x3t
        0x6t
        0xct
        0xbt
        -0x3at
        -0x57t
        -0x54t
        -0x42t
        -0x4ft
        -0x54t
        -0x1t
        0x12t
        0x12t
        0x3t
        0xbt
        0xet
        0x12t
        0x8t
        0x5t
        0x18t
        0x5t
        -0x4bt
        -0x50t
        -0x21t
        -0x2ft
        -0x21t
        -0x21t
        -0x2bt
        -0x25t
        -0x26t
        -0x35t
        -0x2bt
        -0x30t
        -0x33t
        -0x41t
        -0x33t
        -0x33t
        -0x3dt
        -0x37t
        -0x38t
        -0x47t
        -0x32t
        -0x3dt
        -0x39t
        -0x41t
        0x12t
        0x7t
        0xbt
        0x3t
        0x3t
        -0x2t
        -0x6t
        -0xct
        -0x3t
        -0x12t
        -0x8t
        -0xdt
        -0x12t
        -0xdt
        -0x16t
        -0x21t
    .end array-data
.end method


# virtual methods
.method public final A4s(I)I
    .locals 6

    .line 17665
    const/4 v5, 0x0

    .line 17666
    .local v0, "attemptsExceededEventsCount":I
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 17667
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SZ;->A08(I)I

    move-result v5

    .line 17668
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17669
    :catch_0
    move-exception v4

    .line 17670
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Lcom/facebook/ads/redexgen/X/cu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SV;->AAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17671
    sget-object v3, Lcom/facebook/ads/redexgen/X/WO;->A00:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17672
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A0I()V

    .line 17673
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Z

    if-eqz v0, :cond_1

    .line 17674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A0J()V

    .line 17675
    :cond_1
    return v5
.end method

.method public final A4t()V
    .locals 1

    .line 17676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A0H()V

    .line 17677
    return-void
.end method

.method public final A5i(Ljava/lang/String;)Z
    .locals 1

    .line 17678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SZ;->A0K(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final A6k()Lorg/json/JSONArray;
    .locals 3

    .line 17679
    const/4 v2, 0x0

    .line 17680
    .local v0, "eventsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A0A()Landroid/database/Cursor;

    move-result-object v2

    .line 17681
    const/4 v0, 0x0

    .line 17682
    .local v1, "events":Lorg/json/JSONArray;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 17683
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/6J;->A01(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v0

    .line 17684
    :cond_0
    if-eqz v2, :cond_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17685
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17686
    :cond_1
    return-object v0

    .line 17687
    .end local v1    # "events":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 17688
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17689
    :cond_2
    throw v0

    .line 17690
    .local v1, "jsone":Lorg/json/JSONException;
    :catch_0
    if-eqz v2, :cond_3

    .line 17691
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17692
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A6l()Lorg/json/JSONObject;
    .locals 3

    .line 17693
    const/4 v2, 0x0

    .line 17694
    .local v0, "tokensCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A0B()Landroid/database/Cursor;

    move-result-object v2

    .line 17695
    const/4 v0, 0x0

    .line 17696
    .local v1, "tokens":Lorg/json/JSONObject;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 17697
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/6J;->A03(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v0

    .line 17698
    :cond_0
    if-eqz v2, :cond_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17700
    :cond_1
    return-object v0

    .line 17701
    .end local v1    # "tokens":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 17702
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17703
    :cond_2
    throw v0

    .line 17704
    .local v1, "jsone":Lorg/json/JSONException;
    :catch_0
    if-eqz v2, :cond_3

    .line 17705
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17706
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7u()I
    .locals 3

    .line 17707
    const/4 v2, 0x0

    .line 17708
    .local v0, "eventCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A09()Landroid/database/Cursor;

    move-result-object v2

    .line 17709
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 17710
    :cond_0
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17711
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17712
    :cond_1
    return v0

    .line 17713
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 17714
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 17715
    :cond_2
    throw v0
.end method

.method public final A7x(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 17716
    const/4 v5, 0x0

    .line 17717
    .local v0, "eventType":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SZ;->A0D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 17718
    .local v1, "eventDebugCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 17719
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6J;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6J;->A04:[Ljava/lang/String;

    const-string v1, "rCLG4kGmKo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2rihfjjJxsL3teC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 17720
    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A0A:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    .line 17721
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 17722
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 17723
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 17724
    :cond_1
    return-object v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9A(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 17725
    const/4 v3, 0x0

    .line 17726
    .local v0, "payloadCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SZ;->A0C(I)Landroid/database/Cursor;

    move-result-object v3

    .line 17727
    const/4 v1, 0x0

    .line 17728
    .local v1, "events":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 17729
    .local v2, "tokens":Lorg/json/JSONObject;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 17730
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/6J;->A03(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v2

    .line 17731
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/6J;->A02(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v1

    .line 17732
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17733
    if-eqz v3, :cond_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17734
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 17735
    :cond_1
    return-object v0

    .line 17736
    :catch_0
    :try_start_1
    const/4 v1, 0x0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17737
    if-eqz v3, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17738
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 17739
    :cond_2
    return-object v0

    .line 17740
    .end local v1    # "events":Lorg/json/JSONArray;
    .end local v2    # "tokens":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    .end local v1
    if-eqz v3, :cond_3

    .line 17741
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 17742
    :cond_3
    throw v0
.end method

.method public final A9x(Ljava/lang/String;)Z
    .locals 1

    .line 17743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SZ;->A0L(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AKL(Lcom/facebook/ads/redexgen/X/UP;Lcom/facebook/ads/redexgen/X/Tg;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/UP;",
            "Lcom/facebook/ads/redexgen/X/Tg<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17744
    .local p1, "callback":Lcom/facebook/ads/redexgen/X/Tg;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6J;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    .line 17745
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UP;->A08()Ljava/lang/String;

    move-result-object v2

    .line 17746
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UP;->A05()Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    .line 17747
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UP;->A06()Lcom/facebook/ads/redexgen/X/UV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UV;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17748
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UP;->A04()D

    move-result-wide v5

    .line 17749
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UP;->A03()D

    move-result-wide v7

    .line 17750
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UP;->A07()Ljava/lang/String;

    move-result-object v9

    .line 17751
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UP;->A09()Ljava/util/Map;

    move-result-object v10

    .line 17752
    move-object v11, p2

    invoke-virtual/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/SZ;->A0G(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Tg;)Landroid/os/AsyncTask;

    .line 17753
    return-void
.end method
