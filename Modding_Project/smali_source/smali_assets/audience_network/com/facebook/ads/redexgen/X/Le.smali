.class public final Lcom/facebook/ads/redexgen/X/Le;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameCountdownTimerListener"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1327
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RKj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UN15gotjq8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ajoBiEUEQKFJNLqm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ifgUnXqkKiJSPGKzKRtyUVwCV1ynqJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MgNPOwYKG3krpOkrgoqalUsb7GIlLECG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4d5pH5OlBXd1RidH0kkNXmSukCNaNWUQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZdfTYbLhRFsUmKvgir0oysIbzYx0fUOP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Le;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Le;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 51131
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/Lu;)V
    .locals 0

    .line 51132
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Le;-><init>(Lcom/facebook/ads/redexgen/X/Lc;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Le;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Le;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1ft
        -0x7t
        -0x15t
        -0x17t
        -0x7t
        -0x1dt
    .end array-data
.end method


# virtual methods
.method public final ACp()V
    .locals 4

    .line 51133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 51134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0P(Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 51135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0a(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0f(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Le;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Le;->A02:[Ljava/lang/String;

    const-string v1, "QDC88FCswtzFK8CArK72WEL9jXMBl5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 51136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 51137
    :goto_0
    return-void

    .line 51138
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEn(F)V
    .locals 9

    .line 51139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    float-to-int v0, p1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0S(Lcom/facebook/ads/redexgen/X/Lc;I)V

    .line 51140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0b(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 51141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0c(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 51142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51143
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Le;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51144
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51145
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    sub-float v6, v7, v0

    goto :goto_0

    .line 51146
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A01(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A07()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v7, p1

    .line 51147
    .local v2, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    mul-float/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Xm;->setProgress(F)V

    goto/16 :goto_1

    .line 51148
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Le;->A02:[Ljava/lang/String;

    const-string v1, "3MuDy2E798EtOoHK0e0a3SiH1QgAy5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A03()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    sub-float v6, v7, v0

    .line 51149
    .local v0, "percentageOfReward":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0d(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-nez v0, :cond_6

    cmpl-float v0, v6, v7

    if-ltz v0, :cond_6

    .line 51150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Lc;->A0h(Lcom/facebook/ads/redexgen/X/Lc;Z)Z

    .line 51151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(III)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Le;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 51152
    .restart local v0    # "percentageOfReward":F
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Xm;->setProgress(F)V

    .line 51153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51154
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A03()I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51155
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    const/4 v4, 0x1

    .line 51156
    .local v1, "canSkip":Z
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0d(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v4, :cond_4

    .line 51157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 51158
    .end local v2    # "percentage":F
    :cond_4
    :goto_1
    return-void

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Le;->A02:[Ljava/lang/String;

    const-string v1, "wpbUz5ctYXHuYyRf6fVCU3uRzsMt7dE8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "BBfRd69Z77LUH69GeqVAIKhho7h2fuMA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 51159
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Lc;->A0h(Lcom/facebook/ads/redexgen/X/Lc;Z)Z

    .line 51160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51161
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    .line 51162
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A24()Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    .line 51163
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NF;->A02()Ljava/lang/String;

    move-result-object v8

    float-to-int v0, p1

    .line 51164
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 51165
    .local v2, "rewardMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Le;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 51166
    .end local v2    # "rewardMessage":Ljava/lang/String;
    goto/16 :goto_0
.end method
