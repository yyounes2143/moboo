.class public Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static CALL_END:Ljava/lang/String; = "callEnd"

.field public static CALL_FAILED:Ljava/lang/String; = "callFailed"

.field public static CALL_START:Ljava/lang/String; = "callStart"

.field public static CONNECTION_ACQUIRED:Ljava/lang/String; = "connectionAcquired"

.field public static CONNECTION_RELEASED:Ljava/lang/String; = "connectionReleased"

.field public static CONNECT_END:Ljava/lang/String; = "connectEnd"

.field public static CONNECT_FAILED:Ljava/lang/String; = "connectFailed"

.field public static CONNECT_START:Ljava/lang/String; = "connectStart"

.field public static DNS_END:Ljava/lang/String; = "dnsEnd"

.field public static DNS_START:Ljava/lang/String; = "dnsStart"

.field public static REQUEST_BODY_END:Ljava/lang/String; = "requestBodyEnd"

.field public static REQUEST_BODY_START:Ljava/lang/String; = "requestBodyStart"

.field public static REQUEST_HEADERS_END:Ljava/lang/String; = "requestHeadersEnd"

.field public static REQUEST_HEADERS_START:Ljava/lang/String; = "requestHeadersStart"

.field public static RESPONSE_BODY_END:Ljava/lang/String; = "responseBodyEnd"

.field public static RESPONSE_BODY_START:Ljava/lang/String; = "responseBodyStart"

.field public static RESPONSE_HEADERS_END:Ljava/lang/String; = "responseHeadersEnd"

.field public static RESPONSE_HEADERS_START:Ljava/lang/String; = "responseHeadersStart"

.field public static SECURE_CONNECT_END:Ljava/lang/String; = "secureConnectEnd"

.field public static SECURE_CONNECT_START:Ljava/lang/String; = "secureConnectStart"

.field public static TRACE_NAME_CONNECT:Ljava/lang/String; = "ConnectTime"

.field public static TRACE_NAME_DNS:Ljava/lang/String; = "DNSTime"

.field public static TRACE_NAME_REQUEST_BODY:Ljava/lang/String; = "RequestBodyTime"

.field public static TRACE_NAME_REQUEST_HEADERS:Ljava/lang/String; = "RequestHeadersTime"

.field public static TRACE_NAME_RESPONSE_BODY:Ljava/lang/String; = "ResponseBodyTime"

.field public static TRACE_NAME_RESPONSE_HEADERS:Ljava/lang/String; = "ResponseHeadersTime"

.field public static TRACE_NAME_SECURE_CONNECT:Ljava/lang/String; = "SecureConnectTime"

.field public static TRACE_NAME_SERVER_RESPONSE:Ljava/lang/String; = "ServerBizTime"

.field public static TRACE_NAME_TOTAL:Ljava/lang/String; = "TotalTime"

.field public static TRACE_URL:Ljava/lang/String; = "Url"


# instance fields
.field private id:Ljava/lang/String;

.field private networkEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sub-long/2addr p2, v0

    .line 35
    return-wide p2

    .line 36
    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    .line 37
    .line 38
    return-wide p1
.end method

.method public generateTraceItemMap(Ljava/lang/Boolean;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->url:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_URL:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->url:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_TOTAL:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 25
    .line 26
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CALL_START:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v4, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CALL_END:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v2, v3, v4}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_DNS:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 44
    .line 45
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->DNS_START:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v4, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->DNS_END:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0, v2, v3, v4}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_SECURE_CONNECT:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 63
    .line 64
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->SECURE_CONNECT_START:Ljava/lang/String;

    .line 65
    .line 66
    sget-object v4, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->SECURE_CONNECT_END:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v2, v3, v4}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_CONNECT:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 82
    .line 83
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CONNECT_START:Ljava/lang/String;

    .line 84
    .line 85
    sget-object v4, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CONNECT_END:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, v2, v3, v4}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_REQUEST_HEADERS:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 101
    .line 102
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_HEADERS_START:Ljava/lang/String;

    .line 103
    .line 104
    sget-object v4, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_HEADERS_END:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p0, v2, v3, v4}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_REQUEST_BODY:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 120
    .line 121
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_BODY_START:Ljava/lang/String;

    .line 122
    .line 123
    sget-object v4, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_BODY_END:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p0, v2, v3, v4}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_1

    .line 141
    .line 142
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_SERVER_RESPONSE:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 145
    .line 146
    sget-object v2, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_HEADERS_END:Ljava/lang/String;

    .line 147
    .line 148
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_HEADERS_START:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p0, v1, v2, v3}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_1
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_SERVER_RESPONSE:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 165
    .line 166
    sget-object v2, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_BODY_END:Ljava/lang/String;

    .line 167
    .line 168
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_HEADERS_START:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p0, v1, v2, v3}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :goto_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_RESPONSE_HEADERS:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 184
    .line 185
    sget-object v2, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_HEADERS_START:Ljava/lang/String;

    .line 186
    .line 187
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_HEADERS_END:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p0, v1, v2, v3}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v1

    .line 193
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->TRACE_NAME_RESPONSE_BODY:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 203
    .line 204
    sget-object v2, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_BODY_START:Ljava/lang/String;

    .line 205
    .line 206
    sget-object v3, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_BODY_END:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p0, v1, v2, v3}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v1

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkEventsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNetworkEventsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->networkEventsMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->timestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
