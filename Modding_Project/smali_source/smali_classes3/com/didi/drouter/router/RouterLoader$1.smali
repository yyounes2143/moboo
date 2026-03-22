.class Lcom/didi/drouter/router/RouterLoader$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;


# direct methods
.method public constructor <init>(Lcom/didi/drouter/router/RouterLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v1, v3}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "warning: there is no request target match"

    .line 55
    .line 56
    new-array v3, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v3}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/didi/drouter/router/Result;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v3, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 80
    .line 81
    invoke-static {v4}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/RouterCallback;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/didi/drouter/router/Result;-><init>(Lcom/didi/drouter/router/Request;Ljava/util/Collection;ILcom/didi/drouter/router/RouterCallback;)V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x194

    .line 89
    .line 90
    iput v1, v0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 91
    .line 92
    iget-object v0, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "not_found"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_0
    new-instance v3, Lcom/didi/drouter/router/Result;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 107
    .line 108
    invoke-static {v4}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    iget-object v7, p0, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 121
    .line 122
    invoke-static {v7}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/RouterCallback;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/didi/drouter/router/Result;-><init>(Lcom/didi/drouter/router/Request;Ljava/util/Collection;ILcom/didi/drouter/router/RouterCallback;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-le v4, v0, :cond_1

    .line 134
    .line 135
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    new-array v6, v0, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v5, v6, v2

    .line 150
    .line 151
    const-string v5, "warning: request match %s targets"

    .line 152
    .line 153
    invoke-virtual {v4, v5, v6}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    new-array v0, v0, [Z

    .line 157
    .line 158
    aput-boolean v2, v0, v2

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_3

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Ljava/util/Map$Entry;

    .line 179
    .line 180
    aget-boolean v5, v0, v2

    .line 181
    .line 182
    if-eqz v5, :cond_2

    .line 183
    .line 184
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Lcom/didi/drouter/router/Request;

    .line 189
    .line 190
    const-string v5, "stop_by_router_target"

    .line 191
    .line 192
    invoke-static {v4, v5}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Lcom/didi/drouter/router/Request;

    .line 201
    .line 202
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Lcom/didi/drouter/store/RouterMeta;

    .line 207
    .line 208
    new-instance v7, Lcom/didi/drouter/router/RouterLoader$1$1;

    .line 209
    .line 210
    invoke-direct {v7, p0, v4, v0, v3}, Lcom/didi/drouter/router/RouterLoader$1$1;-><init>(Lcom/didi/drouter/router/RouterLoader$1;Ljava/util/Map$Entry;[ZLcom/didi/drouter/router/Result;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v5, v6, v7}, Lcom/didi/drouter/router/InterceptorHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_3
    return-void
.end method
