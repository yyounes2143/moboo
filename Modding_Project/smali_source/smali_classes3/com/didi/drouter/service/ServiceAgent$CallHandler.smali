.class Lcom/didi/drouter/service/ServiceAgent$CallHandler;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/drouter/service/ServiceAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallHandler"
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/didi/drouter/service/ServiceAgent$CallHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/didi/drouter/service/ICallService$Type0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Lcom/didi/drouter/service/ICallService$Type1;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Lcom/didi/drouter/service/ICallService$Type2;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p0, Lcom/didi/drouter/service/ICallService$Type3;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p0, Lcom/didi/drouter/service/ICallService$Type4;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    instance-of v0, p0, Lcom/didi/drouter/service/ICallService$Type5;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    instance-of p0, p0, Lcom/didi/drouter/service/ICallService$TypeN;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    aget-object v3, p3, v2

    .line 6
    .line 7
    check-cast v3, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    new-array v3, v5, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object v4, v3, v2

    .line 16
    .line 17
    :cond_0
    iget-object v6, v0, Lcom/didi/drouter/service/ServiceAgent$CallHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v7, v6, Lcom/didi/drouter/service/ICallService$Type0;

    .line 20
    .line 21
    if-eqz v7, :cond_1

    .line 22
    .line 23
    array-length v7, v3

    .line 24
    if-nez v7, :cond_1

    .line 25
    .line 26
    check-cast v6, Lcom/didi/drouter/service/ICallService$Type0;

    .line 27
    .line 28
    invoke-interface {v6}, Lcom/didi/drouter/service/ICallService$Type0;->call()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    return-object v1

    .line 33
    :cond_1
    instance-of v7, v6, Lcom/didi/drouter/service/ICallService$Type1;

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    array-length v7, v3

    .line 38
    if-ne v7, v5, :cond_2

    .line 39
    .line 40
    check-cast v6, Lcom/didi/drouter/service/ICallService$Type1;

    .line 41
    .line 42
    aget-object v1, v3, v2

    .line 43
    .line 44
    invoke-interface {v6, v1}, Lcom/didi/drouter/service/ICallService$Type1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    return-object v1

    .line 49
    :cond_2
    instance-of v7, v6, Lcom/didi/drouter/service/ICallService$Type2;

    .line 50
    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    array-length v7, v3

    .line 54
    if-ne v7, v1, :cond_3

    .line 55
    .line 56
    check-cast v6, Lcom/didi/drouter/service/ICallService$Type2;

    .line 57
    .line 58
    aget-object v1, v3, v2

    .line 59
    .line 60
    aget-object v2, v3, v5

    .line 61
    .line 62
    invoke-interface {v6, v1, v2}, Lcom/didi/drouter/service/ICallService$Type2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    return-object v1

    .line 67
    :cond_3
    instance-of v7, v6, Lcom/didi/drouter/service/ICallService$Type3;

    .line 68
    .line 69
    const/4 v8, 0x3

    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    array-length v7, v3

    .line 73
    if-ne v7, v8, :cond_4

    .line 74
    .line 75
    check-cast v6, Lcom/didi/drouter/service/ICallService$Type3;

    .line 76
    .line 77
    aget-object v2, v3, v2

    .line 78
    .line 79
    aget-object v4, v3, v5

    .line 80
    .line 81
    aget-object v1, v3, v1

    .line 82
    .line 83
    invoke-interface {v6, v2, v4, v1}, Lcom/didi/drouter/service/ICallService$Type3;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    return-object v1

    .line 88
    :cond_4
    instance-of v7, v6, Lcom/didi/drouter/service/ICallService$Type4;

    .line 89
    .line 90
    const/4 v9, 0x4

    .line 91
    if-eqz v7, :cond_5

    .line 92
    .line 93
    array-length v7, v3

    .line 94
    if-ne v7, v9, :cond_5

    .line 95
    .line 96
    check-cast v6, Lcom/didi/drouter/service/ICallService$Type4;

    .line 97
    .line 98
    aget-object v2, v3, v2

    .line 99
    .line 100
    aget-object v4, v3, v5

    .line 101
    .line 102
    aget-object v1, v3, v1

    .line 103
    .line 104
    aget-object v3, v3, v8

    .line 105
    .line 106
    invoke-interface {v6, v2, v4, v1, v3}, Lcom/didi/drouter/service/ICallService$Type4;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    return-object v1

    .line 111
    :cond_5
    instance-of v7, v6, Lcom/didi/drouter/service/ICallService$Type5;

    .line 112
    .line 113
    if-eqz v7, :cond_6

    .line 114
    .line 115
    array-length v7, v3

    .line 116
    const/4 v10, 0x5

    .line 117
    if-ne v7, v10, :cond_6

    .line 118
    .line 119
    move-object v11, v6

    .line 120
    check-cast v11, Lcom/didi/drouter/service/ICallService$Type5;

    .line 121
    .line 122
    aget-object v12, v3, v2

    .line 123
    .line 124
    aget-object v13, v3, v5

    .line 125
    .line 126
    aget-object v14, v3, v1

    .line 127
    .line 128
    aget-object v15, v3, v8

    .line 129
    .line 130
    aget-object v16, v3, v9

    .line 131
    .line 132
    invoke-interface/range {v11 .. v16}, Lcom/didi/drouter/service/ICallService$Type5;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    return-object v1

    .line 137
    :cond_6
    instance-of v7, v6, Lcom/didi/drouter/service/ICallService$TypeN;

    .line 138
    .line 139
    if-eqz v7, :cond_7

    .line 140
    .line 141
    check-cast v6, Lcom/didi/drouter/service/ICallService$TypeN;

    .line 142
    .line 143
    invoke-interface {v6, v3}, Lcom/didi/drouter/service/ICallService$TypeN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    return-object v1

    .line 148
    :cond_7
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iget-object v7, v0, Lcom/didi/drouter/service/ServiceAgent$CallHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    array-length v3, v3

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object v7, v1, v2

    .line 170
    .line 171
    aput-object v3, v1, v5

    .line 172
    .line 173
    const-string v2, "%s not match with argument length %s "

    .line 174
    .line 175
    invoke-virtual {v6, v2, v1}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    return-object v4
.end method
