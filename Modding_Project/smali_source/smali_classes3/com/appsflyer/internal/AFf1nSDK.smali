.class public final Lcom/appsflyer/internal/AFf1nSDK;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFAdRevenueData:I = 0x0

.field private static component2:I = 0x1

.field private static getCurrencyIso4217Code:[C

.field private static getMediationNetwork:I

.field private static getMonetizationNetwork:Z

.field private static getRevenue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFf1nSDK;->getMediationNetwork()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/appsflyer/internal/AFf1nSDK;->component2:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x19

    .line 12
    .line 13
    rem-int/lit16 v0, v0, 0x80

    .line 14
    .line 15
    sput v0, Lcom/appsflyer/internal/AFf1nSDK;->AFAdRevenueData:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 10

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget v0, Lcom/appsflyer/internal/AFf1nSDK;->$10:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x4b

    .line 6
    .line 7
    rem-int/lit16 v0, v0, 0x80

    .line 8
    .line 9
    sput v0, Lcom/appsflyer/internal/AFf1nSDK;->$11:I

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    check-cast p2, [C

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const-string v0, "ISO-8859-1"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    check-cast p0, [B

    .line 26
    .line 27
    new-instance v0, Lcom/appsflyer/internal/AFk1oSDK;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/appsflyer/internal/AFk1oSDK;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/appsflyer/internal/AFf1nSDK;->getCurrencyIso4217Code:[C

    .line 33
    .line 34
    const-wide v2, 0x19569dd871fb8d0aL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    array-length v5, v1

    .line 43
    new-array v6, v5, [C

    .line 44
    .line 45
    move v7, v4

    .line 46
    :goto_0
    if-ge v7, v5, :cond_2

    .line 47
    .line 48
    aget-char v8, v1, v7

    .line 49
    .line 50
    int-to-long v8, v8

    .line 51
    xor-long/2addr v8, v2

    .line 52
    long-to-int v8, v8

    .line 53
    int-to-char v8, v8

    .line 54
    aput-char v8, v6, v7

    .line 55
    .line 56
    add-int/lit8 v7, v7, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v1, v6

    .line 60
    :cond_3
    sget v5, Lcom/appsflyer/internal/AFf1nSDK;->getMediationNetwork:I

    .line 61
    .line 62
    int-to-long v5, v5

    .line 63
    xor-long/2addr v2, v5

    .line 64
    long-to-int v2, v2

    .line 65
    sget-boolean v3, Lcom/appsflyer/internal/AFf1nSDK;->getRevenue:Z

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    sget p1, Lcom/appsflyer/internal/AFf1nSDK;->$11:I

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x3

    .line 72
    .line 73
    rem-int/lit16 p1, p1, 0x80

    .line 74
    .line 75
    sput p1, Lcom/appsflyer/internal/AFf1nSDK;->$10:I

    .line 76
    .line 77
    array-length p1, p0

    .line 78
    iput p1, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 79
    .line 80
    new-array p1, p1, [C

    .line 81
    .line 82
    iput v4, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 83
    .line 84
    :goto_1
    iget p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 85
    .line 86
    iget v3, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 87
    .line 88
    if-ge p2, v3, :cond_4

    .line 89
    .line 90
    add-int/lit8 v3, v3, -0x1

    .line 91
    .line 92
    sub-int/2addr v3, p2

    .line 93
    aget-byte v3, p0, v3

    .line 94
    .line 95
    add-int/2addr v3, p3

    .line 96
    aget-char v3, v1, v3

    .line 97
    .line 98
    sub-int/2addr v3, v2

    .line 99
    int-to-char v3, v3

    .line 100
    aput-char v3, p1, p2

    .line 101
    .line 102
    add-int/lit8 p2, p2, 0x1

    .line 103
    .line 104
    iput p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    new-instance p0, Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 110
    .line 111
    .line 112
    aput-object p0, p4, v4

    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    sget-boolean p0, Lcom/appsflyer/internal/AFf1nSDK;->getMonetizationNetwork:Z

    .line 116
    .line 117
    if-eqz p0, :cond_7

    .line 118
    .line 119
    array-length p0, p2

    .line 120
    iput p0, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 121
    .line 122
    new-array p0, p0, [C

    .line 123
    .line 124
    iput v4, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 125
    .line 126
    :goto_2
    iget p1, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 127
    .line 128
    iget v3, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 129
    .line 130
    if-ge p1, v3, :cond_6

    .line 131
    .line 132
    add-int/lit8 v3, v3, -0x1

    .line 133
    .line 134
    sub-int/2addr v3, p1

    .line 135
    aget-char v3, p2, v3

    .line 136
    .line 137
    sub-int/2addr v3, p3

    .line 138
    aget-char v3, v1, v3

    .line 139
    .line 140
    sub-int/2addr v3, v2

    .line 141
    int-to-char v3, v3

    .line 142
    aput-char v3, p0, p1

    .line 143
    .line 144
    add-int/lit8 p1, p1, 0x1

    .line 145
    .line 146
    iput p1, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    new-instance p1, Ljava/lang/String;

    .line 150
    .line 151
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 152
    .line 153
    .line 154
    aput-object p1, p4, v4

    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    array-length p0, p1

    .line 158
    iput p0, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 159
    .line 160
    new-array p0, p0, [C

    .line 161
    .line 162
    iput v4, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 163
    .line 164
    :goto_3
    iget p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 165
    .line 166
    iget v3, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 167
    .line 168
    if-ge p2, v3, :cond_8

    .line 169
    .line 170
    sget v5, Lcom/appsflyer/internal/AFf1nSDK;->$11:I

    .line 171
    .line 172
    add-int/lit8 v5, v5, 0x51

    .line 173
    .line 174
    rem-int/lit16 v5, v5, 0x80

    .line 175
    .line 176
    sput v5, Lcom/appsflyer/internal/AFf1nSDK;->$10:I

    .line 177
    .line 178
    add-int/lit8 v3, v3, -0x1

    .line 179
    .line 180
    sub-int/2addr v3, p2

    .line 181
    aget v3, p1, v3

    .line 182
    .line 183
    sub-int/2addr v3, p3

    .line 184
    aget-char v3, v1, v3

    .line 185
    .line 186
    sub-int/2addr v3, v2

    .line 187
    int-to-char v3, v3

    .line 188
    aput-char v3, p0, p2

    .line 189
    .line 190
    add-int/lit8 p2, p2, 0x1

    .line 191
    .line 192
    iput p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_8
    new-instance p1, Ljava/lang/String;

    .line 196
    .line 197
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 198
    .line 199
    .line 200
    sget p0, Lcom/appsflyer/internal/AFf1nSDK;->$11:I

    .line 201
    .line 202
    add-int/lit8 p0, p0, 0x29

    .line 203
    .line 204
    rem-int/lit16 p2, p0, 0x80

    .line 205
    .line 206
    sput p2, Lcom/appsflyer/internal/AFf1nSDK;->$10:I

    .line 207
    .line 208
    rem-int/lit8 p0, p0, 0x2

    .line 209
    .line 210
    if-nez p0, :cond_9

    .line 211
    .line 212
    aput-object p1, p4, v4

    .line 213
    .line 214
    return-void

    .line 215
    :cond_9
    const/4 p0, 0x0

    .line 216
    throw p0
.end method

.method private static getCurrencyIso4217Code(Lcom/appsflyer/internal/AFi1vSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1sSDK;
    .locals 5
    .param p0    # Lcom/appsflyer/internal/AFi1vSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    new-instance p1, Lcom/appsflyer/internal/AFi1sSDK;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getRevenue:Lcom/appsflyer/internal/AFh1dSDK;

    .line 8
    .line 9
    sget-object p2, Lcom/appsflyer/internal/AFh1dSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1dSDK;

    .line 10
    .line 11
    if-ne p0, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    sget-object p0, Lcom/appsflyer/internal/AFi1ySDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1ySDK;

    .line 16
    .line 17
    invoke-direct {p1, v0, p0}, Lcom/appsflyer/internal/AFi1sSDK;-><init>(ZLcom/appsflyer/internal/AFi1ySDK;)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    rsub-int/lit8 v2, v2, 0x7f

    .line 26
    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v3, "\u008c\u0085\u0081\u0086\u0087\u0085\u008c\u0082\u008b\u0085\u0082\u0082\u0082\u0081\u0086\u0082\u0086\u0081\u008b\u0082\u008c\u0087\u008d\u0083\u0082\u0087\u008c\u0083\u0086\u0087\u0083\u0083\u008b\u0087\u0081\u0083\u008a\u0086\u0089\u0086\u0088\u0086\u0084\u0085\u0087\u0086\u0083\u0085\u0085\u0086\u0086\u0085\u0084\u0082\u0084\u0081\u0083\u0082\u0083\u0081\u0081\u0082\u0081\u0081"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {v3, v4, v4, v2, v0}, Lcom/appsflyer/internal/AFf1nSDK;->a(Ljava/lang/String;[ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    aget-object v0, v0, v1

    .line 36
    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->getRevenue:Lcom/appsflyer/internal/AFh1dSDK;

    .line 44
    .line 45
    sget-object v2, Lcom/appsflyer/internal/AFh1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1dSDK;

    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string p2, ""

    .line 64
    .line 65
    move-object p3, v0

    .line 66
    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMediationNetwork:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    const-string v0, "android"

    .line 82
    .line 83
    const-string v1, "v1"

    .line 84
    .line 85
    invoke-static {p3, p0, v0, v1, p2}, Lcom/appsflyer/internal/AFf1nSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    new-instance p1, Lcom/appsflyer/internal/AFi1sSDK;

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    sget-object p2, Lcom/appsflyer/internal/AFi1ySDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1ySDK;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    sget-object p2, Lcom/appsflyer/internal/AFi1ySDK;->getRevenue:Lcom/appsflyer/internal/AFi1ySDK;

    .line 101
    .line 102
    :goto_2
    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/AFi1sSDK;-><init>(ZLcom/appsflyer/internal/AFi1ySDK;)V

    .line 103
    .line 104
    .line 105
    return-object p1
.end method

.method public static getMediationNetwork()V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/appsflyer/internal/AFf1nSDK;->getCurrencyIso4217Code:[C

    .line 9
    .line 10
    const v0, 0x71fb8d1a

    .line 11
    .line 12
    .line 13
    sput v0, Lcom/appsflyer/internal/AFf1nSDK;->getMediationNetwork:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/appsflyer/internal/AFf1nSDK;->getMonetizationNetwork:Z

    .line 17
    .line 18
    sput-boolean v0, Lcom/appsflyer/internal/AFf1nSDK;->getRevenue:Z

    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 2
        -0x72b7s
        -0x72b3s
        -0x72b4s
        -0x72bds
        -0x72b8s
        -0x72b2s
        -0x72b1s
        -0x72bes
        -0x72b6s
        -0x72a2s
        -0x72b5s
        -0x72a5s
        -0x72a1s
    .end array-data
.end method

.method private static getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    filled-new-array {p1, p2, p3, p4, v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "\u2063"

    .line 8
    .line 9
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFj1dSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x0

    .line 22
    const/16 p3, 0xc

    .line 23
    .line 24
    if-ge p1, p3, :cond_1

    .line 25
    .line 26
    sget p1, Lcom/appsflyer/internal/AFf1nSDK;->AFAdRevenueData:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x71

    .line 29
    .line 30
    rem-int/lit16 p1, p1, 0x80

    .line 31
    .line 32
    sput p1, Lcom/appsflyer/internal/AFf1nSDK;->component2:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x6f

    .line 35
    .line 36
    rem-int/lit16 p3, p1, 0x80

    .line 37
    .line 38
    sput p3, Lcom/appsflyer/internal/AFf1nSDK;->AFAdRevenueData:I

    .line 39
    .line 40
    rem-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/16 p1, 0x3f

    .line 45
    .line 46
    div-int/2addr p1, p2

    .line 47
    :cond_0
    return-object p0

    .line 48
    :cond_1
    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method


# virtual methods
.method public final getRevenue(Lcom/appsflyer/internal/AFi1vSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1sSDK;
    .locals 3
    .param p1    # Lcom/appsflyer/internal/AFi1vSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    sget v1, Lcom/appsflyer/internal/AFf1nSDK;->AFAdRevenueData:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x6f

    .line 7
    .line 8
    rem-int/lit16 v2, v1, 0x80

    .line 9
    .line 10
    sput v2, Lcom/appsflyer/internal/AFf1nSDK;->component2:I

    .line 11
    .line 12
    rem-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x59

    .line 17
    .line 18
    div-int/2addr v1, v0

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    :goto_0
    if-eqz p4, :cond_1

    .line 25
    .line 26
    invoke-static {p1, p2, p3, p4}, Lcom/appsflyer/internal/AFf1nSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFi1vSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1sSDK;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFf1nSDK;->AFAdRevenueData:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x11

    .line 34
    .line 35
    rem-int/lit16 p1, p1, 0x80

    .line 36
    .line 37
    sput p1, Lcom/appsflyer/internal/AFf1nSDK;->component2:I

    .line 38
    .line 39
    new-instance p1, Lcom/appsflyer/internal/AFi1sSDK;

    .line 40
    .line 41
    sget-object p2, Lcom/appsflyer/internal/AFi1ySDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1ySDK;

    .line 42
    .line 43
    invoke-direct {p1, v0, p2}, Lcom/appsflyer/internal/AFi1sSDK;-><init>(ZLcom/appsflyer/internal/AFi1ySDK;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method
