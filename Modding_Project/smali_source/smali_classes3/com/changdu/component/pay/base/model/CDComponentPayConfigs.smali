.class public final Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003JO\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;",
        "Ljava/io/Serializable;",
        "coreCode",
        "",
        "payBaseUrl",
        "",
        "payAppId",
        "",
        "payVersion",
        "merchandiseId",
        "merchandiseName",
        "purchaseHistoryCallbackUrl",
        "(ILjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V",
        "getCoreCode",
        "()I",
        "getMerchandiseId",
        "()J",
        "getMerchandiseName",
        "()Ljava/lang/String;",
        "getPayAppId",
        "getPayBaseUrl",
        "getPayVersion",
        "getPurchaseHistoryCallbackUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "pay-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final coreCode:I

.field private final merchandiseId:J

.field private final merchandiseName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final payAppId:J

.field private final payBaseUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final payVersion:J

.field private final purchaseHistoryCallbackUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 11
    .line 12
    iput-wide p7, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 13
    .line 14
    iput-object p9, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p10, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;ILjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;
    .locals 0

    .line 1
    and-int/lit8 p12, p11, 0x1

    .line 2
    .line 3
    if-eqz p12, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p12, p11, 0x2

    .line 8
    .line 9
    if-eqz p12, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p12, p11, 0x4

    .line 14
    .line 15
    if-eqz p12, :cond_2

    .line 16
    .line 17
    iget-wide p3, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p12, p11, 0x8

    .line 20
    .line 21
    if-eqz p12, :cond_3

    .line 22
    .line 23
    iget-wide p5, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p12, p11, 0x10

    .line 26
    .line 27
    if-eqz p12, :cond_4

    .line 28
    .line 29
    iget-wide p7, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p12, p11, 0x20

    .line 32
    .line 33
    if-eqz p12, :cond_5

    .line 34
    .line 35
    iget-object p9, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p11, p11, 0x40

    .line 38
    .line 39
    if-eqz p11, :cond_6

    .line 40
    .line 41
    iget-object p10, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    move-object p11, p9

    .line 44
    move-object p12, p10

    .line 45
    move-wide p9, p7

    .line 46
    move-wide p7, p5

    .line 47
    move-wide p5, p3

    .line 48
    move p3, p1

    .line 49
    move-object p4, p2

    .line 50
    move-object p2, p0

    .line 51
    invoke-virtual/range {p2 .. p12}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->copy(ILjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    move-wide/from16 v5, p5

    .line 7
    .line 8
    move-wide/from16 v7, p7

    .line 9
    .line 10
    move-object/from16 v9, p9

    .line 11
    .line 12
    move-object/from16 v10, p10

    .line 13
    .line 14
    invoke-direct/range {v0 .. v10}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;-><init>(ILjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;

    .line 12
    .line 13
    iget v1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 14
    .line 15
    iget v3, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 32
    .line 33
    iget-wide v5, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-wide v3, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 41
    .line 42
    iget-wide v5, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 50
    .line 51
    iget-wide v5, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object v1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    return v0
.end method

.method public final getCoreCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMerchandiseId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMerchandiseName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPayAppId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPayBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPayVersion()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPurchaseHistoryCallbackUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lcom/changdu/component/pay/base/model/a;->a(Ljava/lang/String;II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-wide v2, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 13
    .line 14
    invoke-static {v2, v3}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    mul-int/2addr v2, v1

    .line 20
    iget-wide v3, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget-wide v2, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 29
    .line 30
    invoke-static {v2, v3}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v0

    .line 35
    mul-int/2addr v2, v1

    .line 36
    iget-object v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Lcom/changdu/component/pay/base/model/a;->a(Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->coreCode:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payBaseUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payAppId:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->payVersion:J

    .line 8
    .line 9
    iget-wide v6, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseId:J

    .line 10
    .line 11
    iget-object v8, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->merchandiseName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v9, p0, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->purchaseHistoryCallbackUrl:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v10, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v11, "CDComponentPayConfigs(coreCode="

    .line 21
    .line 22
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", payBaseUrl="

    .line 29
    .line 30
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", payAppId="

    .line 37
    .line 38
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", payVersion="

    .line 45
    .line 46
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", merchandiseId="

    .line 53
    .line 54
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", merchandiseName="

    .line 61
    .line 62
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", purchaseHistoryCallbackUrl="

    .line 69
    .line 70
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
