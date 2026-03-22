.class Lcom/didi/drouter/router/RouterDispatcher;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "router_start_view_new_instance"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Lcom/didi/drouter/store/IRouterProxy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    instance-of v0, p1, Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    check-cast p1, Landroid/view/View;

    .line 45
    .line 46
    iput-object p1, p2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string p1, "complete"

    .line 56
    .line 57
    invoke-static {p0, p1}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/router/IRouterHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, v1}, Lcom/didi/drouter/store/IRouterProxy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/didi/drouter/router/IRouterHandler;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :cond_1
    :goto_0
    move-object v4, v0

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwww()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    new-instance v1, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 34
    .line 35
    move-object v3, p0

    .line 36
    move-object v2, p1

    .line 37
    move-object v5, p2

    .line 38
    move-object v6, p3

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterHandler;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/didi/drouter/utils/RouterExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    move-object v3, p0

    .line 47
    const-string p0, "error"

    .line 48
    .line 49
    invoke-static {v3, p0}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "router_start_fragment_new_instance"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1, v1}, Lcom/didi/drouter/store/IRouterProxy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_0
    instance-of p1, v1, Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 40
    .line 41
    iput-object v1, p2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/fragment/app/Fragment;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string p1, "complete"

    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    new-instance v3, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "router_start_activity_flags"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    :cond_2
    instance-of v4, v2, Landroid/app/Activity;

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    const/high16 v5, 0x10000000

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    :cond_3
    const-string v5, "router_start_activity_request_number"

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const-string v6, "router_start_activity_request_code"

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0, v6}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/16 v6, 0x400

    .line 97
    .line 98
    :goto_1
    iget-object v7, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/activity/result/ActivityResultLauncher;

    .line 99
    .line 100
    if-eqz v7, :cond_5

    .line 101
    .line 102
    invoke-virtual {v7, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    if-eqz v4, :cond_6

    .line 107
    .line 108
    instance-of v7, p3, Lcom/didi/drouter/router/RouterCallback$ActivityCallback;

    .line 109
    .line 110
    if-eqz v7, :cond_6

    .line 111
    .line 112
    move-object v5, v2

    .line 113
    check-cast v5, Landroid/app/Activity;

    .line 114
    .line 115
    move-object v7, p3

    .line 116
    check-cast v7, Lcom/didi/drouter/router/RouterCallback$ActivityCallback;

    .line 117
    .line 118
    invoke-static {v5, v3, v6, v7}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Landroid/content/Intent;ILcom/didi/drouter/router/RouterCallback$ActivityCallback;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    const-string v7, "router_start_activity_options"

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    if-eqz v5, :cond_7

    .line 127
    .line 128
    move-object v5, v2

    .line 129
    check-cast v5, Landroid/app/Activity;

    .line 130
    .line 131
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-static {v5, v3, v6, v7}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v2, v3, v5}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    const-string v3, "router_start_activity_animation"

    .line 147
    .line 148
    invoke-virtual {p0, v3}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)[I

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v4, :cond_8

    .line 153
    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    array-length v4, v3

    .line 157
    const/4 v5, 0x2

    .line 158
    if-ne v4, v5, :cond_8

    .line 159
    .line 160
    check-cast v2, Landroid/app/Activity;

    .line 161
    .line 162
    aget v4, v3, v0

    .line 163
    .line 164
    aget v3, v3, v1

    .line 165
    .line 166
    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 167
    .line 168
    .line 169
    :cond_8
    iput-boolean v1, p2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwww()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_9

    .line 176
    .line 177
    if-eqz p3, :cond_9

    .line 178
    .line 179
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    new-array v1, v1, [Ljava/lang/Object;

    .line 188
    .line 189
    aput-object p3, v1, v0

    .line 190
    .line 191
    const-string p3, "request \"%s\" will be hold"

    .line 192
    .line 193
    invoke-virtual {p1, p3, v1}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p0, p2}, Lcom/didi/drouter/router/Monitor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/Result;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_9
    const-string p1, "complete"

    .line 201
    .line 202
    invoke-static {p0, p1}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v1, v4, v5

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aput-object v2, v4, v1

    .line 21
    .line 22
    const-string v2, "request \"%s\", class \"%s\" start execute"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v4}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    if-eq v0, v3, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/didi/drouter/router/RouterDispatcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/didi/drouter/router/RouterDispatcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/didi/drouter/router/RouterDispatcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/didi/drouter/router/RouterDispatcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterHandler;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v1, v2, v3

    .line 20
    .line 21
    const-string v1, "request \"%s\" will hold"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {p2, p1, p3}, Lcom/didi/drouter/router/IRouterHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/Result;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwww()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    if-eqz p4, :cond_1

    .line 36
    .line 37
    invoke-static {p1, p3}, Lcom/didi/drouter/router/Monitor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/Result;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p0, "complete"

    .line 42
    .line 43
    invoke-static {p1, p0}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
