.class Lcom/mbridge/msdk/mbnative/controller/NativeController$d;
.super Ljava/util/TimerTask;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/NativeController$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/mbridge/msdk/mbnative/controller/NativeController;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;JLcom/mbridge/msdk/mbnative/controller/NativeController$o;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->c:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->a:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0xea60

    .line 9
    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/setting/l;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->q()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v2, 0x9

    .line 47
    .line 48
    if-eq v0, v2, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    if-ne v1, v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x3

    .line 65
    if-ne v1, v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->c:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x0

    .line 85
    :cond_3
    move v2, v1

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    instance-of v4, v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 103
    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 139
    .line 140
    invoke-static {v4}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4, v3}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 151
    .line 152
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/setting/l;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lcom/mbridge/msdk/setting/c;->C()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-static {v2, v3}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_3

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    goto :goto_0

    .line 168
    :cond_5
    if-eqz v2, :cond_6

    .line 169
    .line 170
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 171
    .line 172
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    return-void
.end method
