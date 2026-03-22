.class Lcom/applovin/impl/t5$b$a;
.super Lcom/applovin/impl/z2;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/t5$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/applovin/impl/t5$b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/t5$b;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/applovin/impl/z2;-><init>(Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/applovin/impl/t5$b;->j(Lcom/applovin/impl/t5$b;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long v7, v0, v2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/applovin/impl/t5$b;->e(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/applovin/impl/t5$b;->g(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/applovin/impl/t5$b;->f(Lcom/applovin/impl/t5$b;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "Ad failed to load in "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " ms for "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/applovin/impl/t5;->e(Lcom/applovin/impl/t5;)Lcom/applovin/mediation/MaxAdFormat;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " ad unit "

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/applovin/impl/t5;->d(Lcom/applovin/impl/t5;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " with error: "

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "failed to load ad: "

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Lcom/applovin/impl/t5$b;->a(Lcom/applovin/impl/t5$b;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 127
    .line 128
    invoke-static {v4}, Lcom/applovin/impl/t5$b;->h(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/q2;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->FAILED_TO_LOAD:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    .line 133
    .line 134
    move-object v9, p2

    .line 135
    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/t5$b;->a(Lcom/applovin/impl/t5$b;Lcom/applovin/impl/q2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/applovin/impl/t5$b;->c(Lcom/applovin/impl/t5$b;)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iget-object p2, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 145
    .line 146
    invoke-static {p2}, Lcom/applovin/impl/t5$b;->d(Lcom/applovin/impl/t5$b;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    add-int/lit8 p2, p2, -0x1

    .line 155
    .line 156
    if-ge p1, p2, :cond_1

    .line 157
    .line 158
    new-instance p1, Lcom/applovin/impl/t5$b;

    .line 159
    .line 160
    iget-object p2, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 161
    .line 162
    iget-object v0, p2, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 163
    .line 164
    invoke-static {p2}, Lcom/applovin/impl/t5$b;->c(Lcom/applovin/impl/t5$b;)I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    add-int/lit8 p2, p2, 0x1

    .line 169
    .line 170
    iget-object v1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 171
    .line 172
    invoke-static {v1}, Lcom/applovin/impl/t5$b;->d(Lcom/applovin/impl/t5$b;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const/4 v2, 0x0

    .line 177
    invoke-direct {p1, v0, p2, v1, v2}, Lcom/applovin/impl/t5$b;-><init>(Lcom/applovin/impl/t5;ILjava/util/List;Lcom/applovin/impl/t5$a;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 181
    .line 182
    invoke-static {p2}, Lcom/applovin/impl/t5$b;->i(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/k;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    sget-object v0, Lcom/applovin/impl/r5$b;->c:Lcom/applovin/impl/r5$b;

    .line 191
    .line 192
    invoke-virtual {p2, p1, v0}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_1
    new-instance p1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 197
    .line 198
    const/16 p2, -0x1389

    .line 199
    .line 200
    const-string v0, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."

    .line 201
    .line 202
    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object p2, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 206
    .line 207
    iget-object p2, p2, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 208
    .line 209
    invoke-static {p2, p1}, Lcom/applovin/impl/t5;->a(Lcom/applovin/impl/t5;Lcom/applovin/mediation/MaxError;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 2
    .line 3
    const-string v1, "loaded ad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/t5$b;->a(Lcom/applovin/impl/t5$b;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/applovin/impl/t5$b;->j(Lcom/applovin/impl/t5$b;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    sub-long v7, v0, v2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/applovin/impl/t5$b;->k(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/applovin/impl/t5$b;->b(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/applovin/impl/t5$b;->a(Lcom/applovin/impl/t5$b;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "Ad loaded in "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, "ms for "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/applovin/impl/t5;->e(Lcom/applovin/impl/t5;)Lcom/applovin/mediation/MaxAdFormat;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, " ad unit "

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/applovin/impl/t5;->d(Lcom/applovin/impl/t5;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 100
    .line 101
    move-object v5, p1

    .line 102
    check-cast v5, Lcom/applovin/impl/q2;

    .line 103
    .line 104
    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->AD_LOADED:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    .line 105
    .line 106
    const/4 v9, 0x0

    .line 107
    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/t5$b;->a(Lcom/applovin/impl/t5$b;Lcom/applovin/impl/q2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/applovin/impl/t5$b;->c(Lcom/applovin/impl/t5$b;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 117
    .line 118
    iget-object v0, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/applovin/impl/t5$b;->d(Lcom/applovin/impl/t5$b;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-ge p1, v0, :cond_1

    .line 129
    .line 130
    iget-object v6, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 131
    .line 132
    invoke-static {v6}, Lcom/applovin/impl/t5$b;->d(Lcom/applovin/impl/t5$b;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    move-object v7, v0

    .line 141
    check-cast v7, Lcom/applovin/impl/q2;

    .line 142
    .line 143
    sget-object v8, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->AD_LOAD_NOT_ATTEMPTED:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    .line 144
    .line 145
    const-wide/16 v9, -0x1

    .line 146
    .line 147
    const/4 v11, 0x0

    .line 148
    invoke-static/range {v6 .. v11}, Lcom/applovin/impl/t5$b;->a(Lcom/applovin/impl/t5$b;Lcom/applovin/impl/q2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/t5$b$a;->b:Lcom/applovin/impl/t5$b;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 155
    .line 156
    invoke-static {p1, v5}, Lcom/applovin/impl/t5;->a(Lcom/applovin/impl/t5;Lcom/applovin/impl/q2;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method
