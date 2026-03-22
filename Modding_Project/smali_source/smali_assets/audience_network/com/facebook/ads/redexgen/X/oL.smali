.class public final Lcom/facebook/ads/redexgen/X/oL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/oL;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0K:Ljava/lang/Object;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/oi;

.field public static final A0M:Ljava/lang/Object;

.field public static final A0N:Ljava/lang/String;

.field public static final A0O:Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;

.field public static final A0Q:Ljava/lang/String;

.field public static final A0R:Ljava/lang/String;

.field public static final A0S:Ljava/lang/String;

.field public static final A0T:Ljava/lang/String;

.field public static final A0U:Ljava/lang/String;

.field public static final A0V:Ljava/lang/String;

.field public static final A0W:Ljava/lang/String;

.field public static final A0X:Ljava/lang/String;

.field public static final A0Y:Ljava/lang/String;

.field public static final A0Z:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/redexgen/X/ok;

.field public A09:Lcom/facebook/ads/redexgen/X/oi;

.field public A0A:Ljava/lang/Object;

.field public A0B:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public A0C:Ljava/lang/Object;

.field public A0D:Z

.field public A0E:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public A0F:Z

.field public A0G:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3270
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AtN4gZlBq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "c6vG0ZoB350sNCwGTcbmyQxG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GzjisXMF7MeBETThzgY0McLZmUxvZEHG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X6Q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OR9IAwpAbXPQPDykEqLOHO0nD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OJOMvHQBuYweGyqOlvOJ7Ft7l3L2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Cgb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ei80eZ3oJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oL;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0K:Ljava/lang/Object;

    .line 3271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0M:Ljava/lang/Object;

    .line 3272
    new-instance v3, Lcom/facebook/ads/redexgen/X/2I;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/2I;-><init>()V

    .line 3273
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oL;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2I;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2I;

    move-result-object v1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3274
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2I;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/2I;

    move-result-object v0

    .line 3275
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2I;->A05()Lcom/facebook/ads/redexgen/X/oi;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0L:Lcom/facebook/ads/redexgen/X/oi;

    .line 3276
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0W:Ljava/lang/String;

    .line 3277
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0Y:Ljava/lang/String;

    .line 3278
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0Z:Ljava/lang/String;

    .line 3279
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0P:Ljava/lang/String;

    .line 3280
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0T:Ljava/lang/String;

    .line 3281
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0R:Ljava/lang/String;

    .line 3282
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0V:Ljava/lang/String;

    .line 3283
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0S:Ljava/lang/String;

    .line 3284
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0N:Ljava/lang/String;

    .line 3285
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0O:Ljava/lang/String;

    .line 3286
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0Q:Ljava/lang/String;

    .line 3287
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0U:Ljava/lang/String;

    .line 3288
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0X:Ljava/lang/String;

    .line 3289
    new-instance v0, Lcom/facebook/ads/redexgen/X/oM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oM;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0J:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101737
    sget-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0K:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A0C:Ljava/lang/Object;

    .line 101738
    sget-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0L:Lcom/facebook/ads/redexgen/X/oi;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A09:Lcom/facebook/ads/redexgen/X/oi;

    .line 101739
    return-void
.end method

.method public static A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/oL;
    .locals 29

    .line 101740
    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0W:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 101741
    .local v1, "mediaItemBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oi;->A08:Lcom/facebook/ads/redexgen/X/1R;

    invoke-interface {v1, v2}, Lcom/facebook/ads/redexgen/X/1R;->A6X(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/oi;

    .line 101742
    .local v5, "mediaItem":Lcom/facebook/ads/redexgen/X/oi;
    :goto_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/oL;->A0Y:Ljava/lang/String;

    .line 101743
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 101744
    .local v24, "presentationStartTimeMs":J
    sget-object v3, Lcom/facebook/ads/redexgen/X/oL;->A0Z:Ljava/lang/String;

    .line 101745
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 101746
    .local v26, "windowStartTimeMs":J
    sget-object v3, Lcom/facebook/ads/redexgen/X/oL;->A0P:Ljava/lang/String;

    .line 101747
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 101748
    .local v28, "elapsedRealtimeEpochOffsetMs":J
    sget-object v4, Lcom/facebook/ads/redexgen/X/oL;->A0T:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 101749
    .local v2, "isSeekable":Z
    sget-object v4, Lcom/facebook/ads/redexgen/X/oL;->A0R:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 101750
    .local p1, "isDynamic":Z
    sget-object v4, Lcom/facebook/ads/redexgen/X/oL;->A0V:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 101751
    .local v14, "liveConfigurationBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 101752
    sget-object v4, Lcom/facebook/ads/redexgen/X/ok;->A06:Lcom/facebook/ads/redexgen/X/1R;

    invoke-interface {v4, v5}, Lcom/facebook/ads/redexgen/X/1R;->A6X(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/ok;

    .line 101753
    .local v15, "liveConfiguration":Lcom/facebook/ads/redexgen/X/ok;
    :goto_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/oL;->A0S:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 101754
    .local v13, "isPlaceHolder":Z
    sget-object v7, Lcom/facebook/ads/redexgen/X/oL;->A0N:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v7, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 101755
    .local p2, "defaultPositionUs":J
    sget-object v7, Lcom/facebook/ads/redexgen/X/oL;->A0O:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 101756
    .local p4, "durationUs":J
    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 101757
    .local p6, "firstPeriodIndex":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0U:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 101758
    .local p7, "lastPeriodIndex":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0X:Ljava/lang/String;

    .line 101759
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v28

    .line 101760
    .local p8, "positionInFirstPeriodUs":J
    new-instance v9, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {v9}, Lcom/facebook/ads/redexgen/X/oL;-><init>()V

    .line 101761
    .local v11, "window":Lcom/facebook/ads/redexgen/X/oL;
    sget-object v10, Lcom/facebook/ads/redexgen/X/oL;->A0M:Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v0, v9

    .end local v11    # "window":Lcom/facebook/ads/redexgen/X/oL;
    .local p10, "window":Lcom/facebook/ads/redexgen/X/oL;
    .end local v13    # "isPlaceHolder":Z
    .local p11, "isPlaceHolder":Z
    .end local v14    # "liveConfigurationBundle":Landroid/os/Bundle;
    .local p12, "liveConfigurationBundle":Landroid/os/Bundle;
    move-object/from16 v21, v6

    invoke-virtual/range {v9 .. v29}, Lcom/facebook/ads/redexgen/X/oL;->A07(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oi;Ljava/lang/Object;JJJZZLcom/facebook/ads/redexgen/X/ok;JJIIJ)Lcom/facebook/ads/redexgen/X/oL;

    .line 101762
    .end local p10
    .end local p11
    .local v3, "isPlaceHolder":Z
    .local v4, "window":Lcom/facebook/ads/redexgen/X/oL;
    iput-boolean v8, v0, Lcom/facebook/ads/redexgen/X/oL;->A0F:Z

    .line 101763
    return-object v0

    .line 101764
    :cond_0
    const/4 v6, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v5, v5, v4

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x7a

    if-eq v5, v4, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const-string v5, "auZ"

    const/4 v4, 0x6

    aput-object v5, v7, v4

    const-string v5, "aKQ"

    const/4 v4, 0x3

    aput-object v5, v7, v4

    goto :goto_1

    .line 101765
    :cond_2
    sget-object v11, Lcom/facebook/ads/redexgen/X/oi;->A09:Lcom/facebook/ads/redexgen/X/oi;

    goto/16 :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/oL;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oL;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x6t
        0xat
        0x8t
        0x4bt
        0x3t
        0x4t
        0x6t
        0x0t
        0x7t
        0xat
        0xat
        0xet
        0x4bt
        0x4t
        0x1t
        0x16t
        0x4bt
        0x4t
        0xbt
        0x1t
        0x17t
        0xat
        0xct
        0x1t
        0x1dt
        0x4bt
        0x8t
        0x0t
        0x1t
        0xct
        0x4t
        0x56t
        0x4bt
        0x6t
        0xat
        0x8t
        0x8t
        0xat
        0xbt
        0x4bt
        0x31t
        0xct
        0x8t
        0x0t
        0x9t
        0xct
        0xbt
        0x0t
    .end array-data
.end method


# virtual methods
.method public final A04()J
    .locals 2

    .line 101766
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A02:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0P(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A05()J
    .locals 2

    .line 101767
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A02:J

    return-wide v0
.end method

.method public final A06()J
    .locals 2

    .line 101768
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0P(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A07(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oi;Ljava/lang/Object;JJJZZLcom/facebook/ads/redexgen/X/ok;JJIIJ)Lcom/facebook/ads/redexgen/X/oL;
    .locals 5

    .line 101769
    move-object v3, p0

    iput-object p1, v3, Lcom/facebook/ads/redexgen/X/oL;->A0C:Ljava/lang/Object;

    .line 101770
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A09:Lcom/facebook/ads/redexgen/X/oi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/oL;->A0L:Lcom/facebook/ads/redexgen/X/oi;

    goto :goto_0

    .line 101771
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const-string v1, "sHLAwqiYlmMVa087WjDP7yFYW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz p2, :cond_4

    iget-object v4, p2, Lcom/facebook/ads/redexgen/X/oi;->A03:Lcom/facebook/ads/redexgen/X/2Q;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const-string v1, "JzGzHC0FwGnnWhMzWBrJaCXM29VIx9g1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 101772
    :goto_1
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/oi;->A03:Lcom/facebook/ads/redexgen/X/2Q;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Ljava/lang/Object;

    .line 101773
    :goto_2
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A0B:Ljava/lang/Object;

    .line 101774
    iput-object p3, v3, Lcom/facebook/ads/redexgen/X/oL;->A0A:Ljava/lang/Object;

    .line 101775
    iput-wide p4, v3, Lcom/facebook/ads/redexgen/X/oL;->A06:J

    .line 101776
    iput-wide p6, v3, Lcom/facebook/ads/redexgen/X/oL;->A07:J

    .line 101777
    iput-wide p8, v3, Lcom/facebook/ads/redexgen/X/oL;->A04:J

    .line 101778
    iput-boolean p10, v3, Lcom/facebook/ads/redexgen/X/oL;->A0G:Z

    .line 101779
    move/from16 v0, p11

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A0D:Z

    .line 101780
    move-object/from16 v1, p12

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A0E:Z

    .line 101781
    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/oL;->A08:Lcom/facebook/ads/redexgen/X/ok;

    .line 101782
    move-wide/from16 v0, p13

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A02:J

    .line 101783
    move-wide/from16 v0, p15

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A03:J

    .line 101784
    move/from16 v0, p17

    iput v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    .line 101785
    move/from16 v0, p18

    iput v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    .line 101786
    move-wide/from16 v0, p19

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A05:J

    .line 101787
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/oL;->A0F:Z

    .line 101788
    return-object v3

    .line 101789
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const-string v1, "IGwZtC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    goto :goto_1

    .line 101790
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 101791
    const/4 v7, 0x1

    if-ne p0, p1, :cond_0

    .line 101792
    return v7

    .line 101793
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101794
    .end local v2
    :cond_1
    return v2

    .line 101795
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/oL;

    .line 101796
    .local v2, "that":Lcom/facebook/ads/redexgen/X/oL;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A0C:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A0C:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A09:Lcom/facebook/ads/redexgen/X/oi;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A09:Lcom/facebook/ads/redexgen/X/oi;

    .line 101797
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A0A:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A0A:Ljava/lang/Object;

    .line 101798
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A08:Lcom/facebook/ads/redexgen/X/ok;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A08:Lcom/facebook/ads/redexgen/X/ok;

    .line 101799
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/oL;->A06:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/oL;->A06:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/oL;->A07:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/oL;->A07:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/oL;->A04:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/oL;->A04:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A0G:Z

    if-ne v1, v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A0D:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A0D:Z

    if-ne v1, v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A0F:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A0F:Z

    if-ne v1, v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/oL;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/oL;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/oL;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/oL;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    if-ne v1, v0, :cond_3

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A05:J

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/oL;->A05:J

    sget-object v6, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const-string v1, "Zdu"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const-string v1, "ITW"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 101800
    :goto_0
    return v7
.end method

.method public final hashCode()I
    .locals 6

    .line 101801
    const/4 v0, 0x7

    .line 101802
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A0C:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 101803
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A09:Lcom/facebook/ads/redexgen/X/oi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oi;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 101804
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A0A:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 101805
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A08:Lcom/facebook/ads/redexgen/X/ok;

    if-nez v0, :cond_0

    :goto_1
    add-int/2addr v1, v2

    .line 101806
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A06:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A06:J

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 101807
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v4, v4, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A07:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A07:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 101808
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v4, v4, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A04:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 101809
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v3, v4, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A0G:Z

    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101810
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A08:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->hashCode()I

    move-result v2

    goto :goto_1

    .line 101811
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A0A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 101812
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/oL;->A0I:[Ljava/lang/String;

    const-string v1, "6VN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "iNJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    mul-int/lit8 v1, v3, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A0D:Z

    add-int/2addr v1, v0

    .line 101813
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A0F:Z

    add-int/2addr v1, v0

    .line 101814
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A02:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 101815
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v4, v4, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A03:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 101816
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    add-int/2addr v1, v0

    .line 101817
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    add-int/2addr v1, v0

    .line 101818
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A05:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A05:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 101819
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v4
.end method
