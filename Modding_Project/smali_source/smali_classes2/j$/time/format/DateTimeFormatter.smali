.class public final Lj$/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final e:Lj$/time/format/DateTimeFormatter;


# instance fields
.field public final a:Lj$/time/format/e;

.field public final b:Ljava/util/Locale;

.field public final c:Lj$/time/format/y;

.field public final d:Lj$/time/chrono/s;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 740
    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0}, Lj$/time/format/s;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/A;->EXCEEDS_PAD:Lj$/time/format/A;

    const/4 v3, 0x4

    const/16 v4, 0xa

    .line 741
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    const/16 v5, 0x2d

    .line 742
    invoke-virtual {v0, v5}, Lj$/time/format/s;->c(C)V

    sget-object v6, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const/4 v7, 0x2

    .line 743
    invoke-virtual {v0, v6, v7}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 744
    invoke-virtual {v0, v5}, Lj$/time/format/s;->c(C)V

    sget-object v8, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 745
    invoke-virtual {v0, v8, v7}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    sget-object v9, Lj$/time/format/z;->STRICT:Lj$/time/format/z;

    sget-object v10, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 746
    invoke-virtual {v0, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 770
    new-instance v11, Lj$/time/format/s;

    invoke-direct {v11}, Lj$/time/format/s;-><init>()V

    .line 313
    sget-object v12, Lj$/time/format/n;->INSENSITIVE:Lj$/time/format/n;

    invoke-virtual {v11, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 772
    invoke-virtual {v11, v0}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 916
    sget-object v13, Lj$/time/format/k;->e:Lj$/time/format/k;

    invoke-virtual {v11, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 774
    invoke-virtual {v11, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 802
    new-instance v11, Lj$/time/format/s;

    invoke-direct {v11}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v11, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 804
    invoke-virtual {v11, v0}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 805
    invoke-virtual {v11}, Lj$/time/format/s;->n()V

    .line 916
    invoke-virtual {v11, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 807
    invoke-virtual {v11, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 839
    new-instance v11, Lj$/time/format/s;

    invoke-direct {v11}, Lj$/time/format/s;-><init>()V

    sget-object v14, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 840
    invoke-virtual {v11, v14, v7}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    const/16 v15, 0x3a

    .line 841
    invoke-virtual {v11, v15}, Lj$/time/format/s;->c(C)V

    sget-object v5, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 842
    invoke-virtual {v11, v5, v7}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 843
    invoke-virtual {v11}, Lj$/time/format/s;->n()V

    .line 844
    invoke-virtual {v11, v15}, Lj$/time/format/s;->c(C)V

    sget-object v15, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 845
    invoke-virtual {v11, v15, v7}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 846
    invoke-virtual {v11}, Lj$/time/format/s;->n()V

    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 717
    new-instance v3, Lj$/time/format/g;

    const/4 v4, 0x0

    move-object/from16 v17, v15

    const/16 v15, 0x9

    move-object/from16 v18, v5

    const/4 v5, 0x1

    invoke-direct {v3, v7, v4, v15, v5}, Lj$/time/format/g;-><init>(Lj$/time/temporal/a;IIZ)V

    invoke-virtual {v11, v3}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    const/4 v3, 0x0

    .line 848
    invoke-virtual {v11, v9, v3}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object v4

    .line 871
    new-instance v7, Lj$/time/format/s;

    invoke-direct {v7}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v7, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 873
    invoke-virtual {v7, v4}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 916
    invoke-virtual {v7, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 875
    invoke-virtual {v7, v9, v3}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 902
    new-instance v7, Lj$/time/format/s;

    invoke-direct {v7}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v7, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 904
    invoke-virtual {v7, v4}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 905
    invoke-virtual {v7}, Lj$/time/format/s;->n()V

    .line 916
    invoke-virtual {v7, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 907
    invoke-virtual {v7, v9, v3}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 930
    new-instance v7, Lj$/time/format/s;

    invoke-direct {v7}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v7, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 932
    invoke-virtual {v7, v0}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    const/16 v0, 0x54

    .line 933
    invoke-virtual {v7, v0}, Lj$/time/format/s;->c(C)V

    .line 934
    invoke-virtual {v7, v4}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 935
    invoke-virtual {v7, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 960
    new-instance v4, Lj$/time/format/s;

    invoke-direct {v4}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v4, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 962
    invoke-virtual {v4, v0}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 351
    sget-object v7, Lj$/time/format/n;->LENIENT:Lj$/time/format/n;

    invoke-virtual {v4, v7}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 916
    invoke-virtual {v4, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 332
    sget-object v11, Lj$/time/format/n;->STRICT:Lj$/time/format/n;

    invoke-virtual {v4, v11}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 966
    invoke-virtual {v4, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object v4

    .line 994
    new-instance v15, Lj$/time/format/s;

    invoke-direct {v15}, Lj$/time/format/s;-><init>()V

    .line 995
    invoke-virtual {v15, v4}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 996
    invoke-virtual {v15}, Lj$/time/format/s;->n()V

    const/16 v4, 0x5b

    .line 997
    invoke-virtual {v15, v4}, Lj$/time/format/s;->c(C)V

    .line 293
    sget-object v3, Lj$/time/format/n;->SENSITIVE:Lj$/time/format/n;

    invoke-virtual {v15, v3}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1136
    new-instance v5, Lj$/time/format/q;

    sget-object v4, Lj$/time/format/s;->h:Lj$/time/format/a;

    move-object/from16 v19, v14

    const-string v14, "ZoneRegionId()"

    invoke-direct {v5, v4, v14}, Lj$/time/format/q;-><init>(Lj$/time/format/a;Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    const/16 v5, 0x5d

    .line 1000
    invoke-virtual {v15, v5}, Lj$/time/format/s;->c(C)V

    .line 1001
    invoke-virtual {v15, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 1035
    new-instance v15, Lj$/time/format/s;

    invoke-direct {v15}, Lj$/time/format/s;-><init>()V

    .line 1036
    invoke-virtual {v15, v0}, Lj$/time/format/s;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 1037
    invoke-virtual {v15}, Lj$/time/format/s;->n()V

    .line 916
    invoke-virtual {v15, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1039
    invoke-virtual {v15}, Lj$/time/format/s;->n()V

    const/16 v0, 0x5b

    .line 1040
    invoke-virtual {v15, v0}, Lj$/time/format/s;->c(C)V

    .line 293
    invoke-virtual {v15, v3}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1136
    new-instance v0, Lj$/time/format/q;

    invoke-direct {v0, v4, v14}, Lj$/time/format/q;-><init>(Lj$/time/format/a;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1043
    invoke-virtual {v15, v5}, Lj$/time/format/s;->c(C)V

    .line 1044
    invoke-virtual {v15, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 1077
    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v0, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    const/4 v3, 0x4

    const/16 v4, 0xa

    .line 1079
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    const/16 v3, 0x2d

    .line 1080
    invoke-virtual {v0, v3}, Lj$/time/format/s;->c(C)V

    sget-object v3, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    const/4 v4, 0x3

    .line 1081
    invoke-virtual {v0, v3, v4}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 1082
    invoke-virtual {v0}, Lj$/time/format/s;->n()V

    .line 916
    invoke-virtual {v0, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1084
    invoke-virtual {v0, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 1121
    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v0, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1122
    sget-object v3, Lj$/time/temporal/i;->c:Lj$/time/temporal/g;

    const/4 v4, 0x4

    const/16 v5, 0xa

    .line 1123
    invoke-virtual {v0, v3, v4, v5, v2}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    const-string v2, "-W"

    .line 1124
    invoke-virtual {v0, v2}, Lj$/time/format/s;->d(Ljava/lang/String;)V

    sget-object v2, Lj$/time/temporal/i;->b:Lj$/time/temporal/g;

    const/4 v3, 0x2

    .line 1125
    invoke-virtual {v0, v2, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    const/16 v3, 0x2d

    .line 1126
    invoke-virtual {v0, v3}, Lj$/time/format/s;->c(C)V

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    const/4 v3, 0x1

    .line 1127
    invoke-virtual {v0, v2, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 1128
    invoke-virtual {v0}, Lj$/time/format/s;->n()V

    .line 916
    invoke-virtual {v0, v13}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1130
    invoke-virtual {v0, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 1166
    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v0, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 856
    new-instance v3, Lj$/time/format/h;

    .line 3407
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 856
    invoke-virtual {v0, v3}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    const/4 v3, 0x0

    .line 1169
    invoke-virtual {v0, v9, v3}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/format/DateTimeFormatter;

    .line 1203
    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v0, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    const/4 v3, 0x4

    .line 1205
    invoke-virtual {v0, v1, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    const/4 v3, 0x2

    .line 1206
    invoke-virtual {v0, v6, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 1207
    invoke-virtual {v0, v8, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 1208
    invoke-virtual {v0}, Lj$/time/format/s;->n()V

    .line 351
    invoke-virtual {v0, v7}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1209
    const-string v3, "+HHMMss"

    const-string v4, "Z"

    .line 1210
    invoke-virtual {v0, v3, v4}, Lj$/time/format/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v11}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1212
    invoke-virtual {v0, v9, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    .line 1263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x1

    .line 1264
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Mon"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v13, 0x2

    .line 1265
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Tue"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v15, 0x3

    .line 1266
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Wed"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v20, 0x4

    .line 1267
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Thu"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v22, 0x5

    .line 1268
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Fri"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v24, 0x6

    .line 1269
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Sat"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v26, 0x7

    .line 1270
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Sun"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1272
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Jan"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Feb"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Mar"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Apr"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "May"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Jun"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Jul"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x8

    .line 1279
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Aug"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x9

    .line 1280
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sep"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xa

    .line 1281
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Oct"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xb

    .line 1282
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Nov"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xc

    .line 1283
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Dec"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    new-instance v3, Lj$/time/format/s;

    invoke-direct {v3}, Lj$/time/format/s;-><init>()V

    .line 313
    invoke-virtual {v3, v12}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 351
    invoke-virtual {v3, v7}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    .line 1287
    invoke-virtual {v3}, Lj$/time/format/s;->n()V

    .line 1288
    invoke-virtual {v3, v2, v0}, Lj$/time/format/s;->g(Lj$/time/temporal/a;Ljava/util/HashMap;)V

    const-string v0, ", "

    .line 1289
    invoke-virtual {v3, v0}, Lj$/time/format/s;->d(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v3}, Lj$/time/format/s;->m()V

    sget-object v0, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 1291
    invoke-virtual {v3, v8, v4, v2, v0}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    const/16 v0, 0x20

    .line 1292
    invoke-virtual {v3, v0}, Lj$/time/format/s;->c(C)V

    .line 1293
    invoke-virtual {v3, v6, v5}, Lj$/time/format/s;->g(Lj$/time/temporal/a;Ljava/util/HashMap;)V

    .line 1294
    invoke-virtual {v3, v0}, Lj$/time/format/s;->c(C)V

    const/4 v4, 0x4

    .line 1295
    invoke-virtual {v3, v1, v4}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 1296
    invoke-virtual {v3, v0}, Lj$/time/format/s;->c(C)V

    move-object/from16 v1, v19

    .line 1297
    invoke-virtual {v3, v1, v2}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    const/16 v1, 0x3a

    .line 1298
    invoke-virtual {v3, v1}, Lj$/time/format/s;->c(C)V

    move-object/from16 v4, v18

    .line 1299
    invoke-virtual {v3, v4, v2}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 1300
    invoke-virtual {v3}, Lj$/time/format/s;->n()V

    .line 1301
    invoke-virtual {v3, v1}, Lj$/time/format/s;->c(C)V

    move-object/from16 v1, v17

    .line 1302
    invoke-virtual {v3, v1, v2}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    .line 1303
    invoke-virtual {v3}, Lj$/time/format/s;->m()V

    .line 1304
    invoke-virtual {v3, v0}, Lj$/time/format/s;->c(C)V

    const-string v0, "+HHMM"

    const-string v1, "GMT"

    .line 1305
    invoke-virtual {v3, v0, v1}, Lj$/time/format/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj$/time/format/z;->SMART:Lj$/time/format/z;

    .line 1306
    invoke-virtual {v3, v0, v10}, Lj$/time/format/s;->o(Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lj$/time/format/e;Ljava/util/Locale;Lj$/time/format/z;Lj$/time/chrono/s;)V
    .locals 2

    sget-object v0, Lj$/time/format/y;->a:Lj$/time/format/y;

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    const-string v1, "printerParser"

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/e;

    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/e;

    .line 1420
    const-string p1, "locale"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 1421
    const-string p1, "decimalStyle"

    invoke-static {v0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/y;

    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/y;

    .line 1422
    const-string p1, "resolverStyle"

    invoke-static {p3, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/z;

    .line 1423
    iput-object p4, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/chrono/s;

    return-void
.end method

.method public static ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;
    .locals 21

    move-object/from16 v0, p0

    .line 563
    new-instance v1, Lj$/time/format/s;

    invoke-direct {v1}, Lj$/time/format/s;-><init>()V

    .line 1717
    const-string v2, "pattern"

    invoke-static {v0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    .line 1723
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 1724
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x7a

    const/16 v7, 0x61

    const/16 v8, 0x5a

    const/16 v9, 0x41

    if-lt v4, v9, :cond_0

    if-le v4, v8, :cond_1

    :cond_0
    if-lt v4, v7, :cond_4c

    if-gt v4, v6, :cond_4c

    :cond_1
    add-int/lit8 v10, v3, 0x1

    .line 1727
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v4, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    sub-int v3, v10, v3

    const/16 v11, 0x70

    const/4 v12, -0x1

    if-ne v4, v11, :cond_9

    .line 1732
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 1733
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_3

    if-le v4, v8, :cond_4

    :cond_3
    if-lt v4, v7, :cond_6

    if-gt v4, v6, :cond_6

    :cond_4
    add-int/lit8 v11, v10, 0x1

    .line 1737
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_5

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    sub-int v10, v11, v10

    goto :goto_3

    :cond_6
    move v11, v10

    move v10, v3

    move v3, v2

    :goto_3
    if-eqz v3, :cond_8

    if-lt v3, v5, :cond_7

    .line 2089
    iget-object v13, v1, Lj$/time/format/s;->a:Lj$/time/format/s;

    iput v3, v13, Lj$/time/format/s;->e:I

    const/16 v3, 0x20

    .line 2090
    iput-char v3, v13, Lj$/time/format/s;->f:C

    .line 2091
    iput v12, v13, Lj$/time/format/s;->g:I

    move v3, v10

    move v13, v11

    goto :goto_4

    .line 2087
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The pad width must be at least one but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1742
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move v13, v10

    .line 1748
    :goto_4
    sget-object v10, Lj$/time/format/s;->i:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lj$/time/temporal/p;

    const/4 v10, 0x2

    const/4 v11, 0x5

    .line 1749
    const-string v14, "Too many pattern letters: "

    move/from16 v20, v12

    const/4 v12, 0x4

    if-eqz v15, :cond_2e

    const/16 v6, 0x13

    if-eq v4, v9, :cond_2d

    const/16 v8, 0x51

    const/4 v9, 0x3

    if-eq v4, v8, :cond_b

    const/16 v8, 0x53

    if-eq v4, v8, :cond_22

    if-eq v4, v7, :cond_20

    const/16 v7, 0x6b

    if-eq v4, v7, :cond_c

    const/16 v7, 0x71

    if-eq v4, v7, :cond_f

    const/16 v7, 0x73

    if-eq v4, v7, :cond_c

    const/16 v7, 0x75

    if-eq v4, v7, :cond_18

    const/16 v7, 0x79

    if-eq v4, v7, :cond_18

    const/16 v7, 0x67

    if-eq v4, v7, :cond_17

    const/16 v7, 0x68

    if-eq v4, v7, :cond_c

    const/16 v7, 0x6d

    if-eq v4, v7, :cond_c

    const/16 v7, 0x6e

    if-eq v4, v7, :cond_2d

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    if-ne v3, v5, :cond_a

    .line 1990
    invoke-virtual {v1, v15}, Lj$/time/format/s;->j(Lj$/time/temporal/p;)V

    goto/16 :goto_11

    .line 1992
    :cond_a
    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    goto/16 :goto_11

    :cond_b
    :pswitch_0
    move v8, v3

    move v7, v4

    goto/16 :goto_9

    :cond_c
    :pswitch_1
    move v8, v3

    move v7, v4

    goto/16 :goto_8

    :pswitch_2
    if-ne v3, v5, :cond_d

    .line 1880
    new-instance v6, Lj$/time/format/p;

    const/4 v11, 0x0

    move v9, v3

    move v10, v3

    move v8, v3

    move v7, v4

    .line 4848
    invoke-direct/range {v6 .. v11}, Lj$/time/format/p;-><init>(CIIII)V

    .line 1880
    invoke-virtual {v1, v6}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    goto/16 :goto_11

    :cond_d
    move v8, v3

    move v7, v4

    if-eq v8, v10, :cond_e

    goto/16 :goto_7

    .line 1883
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern \"cc\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :pswitch_3
    move v8, v3

    move v7, v4

    goto/16 :goto_7

    :pswitch_4
    move v8, v3

    move v7, v4

    if-eq v8, v5, :cond_12

    if-eq v8, v10, :cond_12

    if-eq v8, v9, :cond_12

    if-eq v8, v12, :cond_11

    if-ne v8, v11, :cond_10

    .line 1940
    sget-object v3, Lj$/time/format/B;->NARROW:Lj$/time/format/B;

    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    .line 1943
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1937
    :cond_11
    sget-object v3, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    .line 1934
    :cond_12
    sget-object v3, Lj$/time/format/B;->SHORT:Lj$/time/format/B;

    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    :pswitch_5
    move v8, v3

    move v7, v4

    if-ne v8, v5, :cond_13

    .line 1951
    invoke-virtual {v1, v15}, Lj$/time/format/s;->j(Lj$/time/temporal/p;)V

    goto/16 :goto_11

    .line 1953
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move v8, v3

    move v7, v4

    if-ne v8, v5, :cond_14

    .line 1973
    invoke-virtual {v1, v15}, Lj$/time/format/s;->j(Lj$/time/temporal/p;)V

    goto/16 :goto_11

    :cond_14
    if-eq v8, v10, :cond_16

    if-ne v8, v9, :cond_15

    goto :goto_5

    .line 1977
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_16
    :goto_5
    sget-object v3, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    invoke-virtual {v1, v15, v8, v9, v3}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    goto/16 :goto_11

    :cond_17
    move v8, v3

    .line 1981
    sget-object v3, Lj$/time/format/A;->NORMAL:Lj$/time/format/A;

    invoke-virtual {v1, v15, v8, v6, v3}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    goto/16 :goto_11

    :cond_18
    move v8, v3

    if-ne v8, v10, :cond_1c

    .line 1871
    sget-object v3, Lj$/time/format/m;->h:Lj$/time/LocalDate;

    .line 626
    const-string v4, "field"

    invoke-static {v15, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    const-string v4, "baseDate"

    invoke-static {v3, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    new-instance v14, Lj$/time/format/m;

    const/16 v16, 0x2

    const/16 v17, 0x2

    const/16 v19, 0x0

    move-object/from16 v18, v3

    .line 2937
    invoke-direct/range {v14 .. v19}, Lj$/time/format/m;-><init>(Lj$/time/temporal/p;IILj$/time/LocalDate;I)V

    if-nez v18, :cond_1b

    .line 2949
    invoke-interface {v15}, Lj$/time/temporal/p;->h()Lj$/time/temporal/t;

    move-result-object v3

    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Lj$/time/temporal/t;->d(J)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2952
    sget-object v3, Lj$/time/format/j;->f:[J

    aget-wide v8, v3, v17

    add-long/2addr v6, v8

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v6, v3

    if-gtz v3, :cond_19

    goto :goto_6

    .line 2953
    :cond_19
    new-instance v0, Lj$/time/b;

    .line 88
    const-string v1, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2953
    throw v0

    .line 2950
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The base value must be within the range of the field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_1b
    :goto_6
    invoke-virtual {v1, v14}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    goto/16 :goto_11

    :cond_1c
    if-ge v8, v12, :cond_1d

    .line 1873
    sget-object v3, Lj$/time/format/A;->NORMAL:Lj$/time/format/A;

    invoke-virtual {v1, v15, v8, v6, v3}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    goto/16 :goto_11

    .line 1875
    :cond_1d
    sget-object v3, Lj$/time/format/A;->EXCEEDS_PAD:Lj$/time/format/A;

    invoke-virtual {v1, v15, v8, v6, v3}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    goto/16 :goto_11

    :goto_7
    move v3, v5

    goto :goto_a

    :goto_8
    if-ne v8, v5, :cond_1e

    .line 1964
    invoke-virtual {v1, v15}, Lj$/time/format/s;->j(Lj$/time/temporal/p;)V

    goto/16 :goto_11

    :cond_1e
    if-ne v8, v10, :cond_1f

    .line 1966
    invoke-virtual {v1, v15, v8}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    goto/16 :goto_11

    .line 1968
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move v8, v3

    move v7, v4

    if-ne v8, v5, :cond_21

    .line 1924
    sget-object v3, Lj$/time/format/B;->SHORT:Lj$/time/format/B;

    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    .line 1926
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move v8, v3

    .line 1947
    sget-object v3, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 715
    new-instance v4, Lj$/time/format/g;

    invoke-direct {v4, v3, v8, v8, v2}, Lj$/time/format/g;-><init>(Lj$/time/temporal/a;IIZ)V

    invoke-virtual {v1, v4}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    goto/16 :goto_11

    :goto_9
    move v3, v2

    :goto_a
    if-eq v8, v5, :cond_29

    if-eq v8, v10, :cond_29

    if-eq v8, v9, :cond_27

    if-eq v8, v12, :cond_25

    if-ne v8, v11, :cond_24

    if-eqz v3, :cond_23

    .line 1916
    sget-object v3, Lj$/time/format/B;->NARROW_STANDALONE:Lj$/time/format/B;

    goto :goto_b

    :cond_23
    sget-object v3, Lj$/time/format/B;->NARROW:Lj$/time/format/B;

    :goto_b
    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    .line 1919
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-eqz v3, :cond_26

    .line 1913
    sget-object v3, Lj$/time/format/B;->FULL_STANDALONE:Lj$/time/format/B;

    goto :goto_c

    :cond_26
    sget-object v3, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    :goto_c
    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    :cond_27
    if-eqz v3, :cond_28

    .line 1910
    sget-object v3, Lj$/time/format/B;->SHORT_STANDALONE:Lj$/time/format/B;

    goto :goto_d

    :cond_28
    sget-object v3, Lj$/time/format/B;->SHORT:Lj$/time/format/B;

    :goto_d
    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    :cond_29
    const/16 v3, 0x65

    if-ne v7, v3, :cond_2a

    .line 1898
    new-instance v6, Lj$/time/format/p;

    const/4 v11, 0x0

    move v9, v8

    move v10, v8

    .line 4848
    invoke-direct/range {v6 .. v11}, Lj$/time/format/p;-><init>(CIIII)V

    .line 1898
    invoke-virtual {v1, v6}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    goto/16 :goto_11

    :cond_2a
    move v3, v8

    const/16 v4, 0x45

    if-ne v7, v4, :cond_2b

    .line 1900
    sget-object v3, Lj$/time/format/B;->SHORT:Lj$/time/format/B;

    invoke-virtual {v1, v15, v3}, Lj$/time/format/s;->h(Lj$/time/temporal/p;Lj$/time/format/B;)V

    goto/16 :goto_11

    :cond_2b
    if-ne v3, v5, :cond_2c

    .line 1903
    invoke-virtual {v1, v15}, Lj$/time/format/s;->j(Lj$/time/temporal/p;)V

    goto/16 :goto_11

    .line 1905
    :cond_2c
    invoke-virtual {v1, v15, v10}, Lj$/time/format/s;->k(Lj$/time/temporal/p;I)V

    goto/16 :goto_11

    .line 1986
    :cond_2d
    :pswitch_7
    sget-object v4, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    invoke-virtual {v1, v15, v3, v6, v4}, Lj$/time/format/s;->l(Lj$/time/temporal/p;IILj$/time/format/A;)V

    goto/16 :goto_11

    :cond_2e
    move v7, v4

    if-ne v7, v6, :cond_31

    if-gt v3, v12, :cond_30

    if-ne v3, v12, :cond_2f

    .line 1755
    sget-object v3, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    .line 1229
    new-instance v4, Lj$/time/format/r;

    invoke-direct {v4, v3, v2}, Lj$/time/format/r;-><init>(Lj$/time/format/B;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    goto/16 :goto_11

    .line 1757
    :cond_2f
    sget-object v3, Lj$/time/format/B;->SHORT:Lj$/time/format/B;

    .line 1229
    new-instance v4, Lj$/time/format/r;

    invoke-direct {v4, v3, v2}, Lj$/time/format/r;-><init>(Lj$/time/format/B;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    goto/16 :goto_11

    .line 1753
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    const/16 v4, 0x56

    if-ne v7, v4, :cond_33

    if-ne v3, v10, :cond_32

    .line 1080
    new-instance v3, Lj$/time/format/q;

    sget-object v4, Lj$/time/temporal/q;->a:Lj$/time/format/a;

    const-string v6, "ZoneId()"

    invoke-direct {v3, v4, v6}, Lj$/time/format/q;-><init>(Lj$/time/format/a;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    goto/16 :goto_11

    .line 1761
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern letter count must be 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/16 v4, 0x76

    if-ne v7, v4, :cond_36

    if-ne v3, v5, :cond_34

    .line 1766
    sget-object v3, Lj$/time/format/B;->SHORT:Lj$/time/format/B;

    .line 1311
    new-instance v4, Lj$/time/format/r;

    invoke-direct {v4, v3, v5}, Lj$/time/format/r;-><init>(Lj$/time/format/B;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    goto/16 :goto_11

    :cond_34
    if-ne v3, v12, :cond_35

    .line 1768
    sget-object v3, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    .line 1311
    new-instance v4, Lj$/time/format/r;

    invoke-direct {v4, v3, v5}, Lj$/time/format/r;-><init>(Lj$/time/format/B;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/s;->b(Lj$/time/format/f;)I

    goto/16 :goto_11

    .line 1770
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong number of  pattern letters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1772
    :cond_36
    const-string v4, "Z"

    const-string v6, "+0000"

    if-ne v7, v8, :cond_3a

    if-ge v3, v12, :cond_37

    .line 1774
    const-string v3, "+HHMM"

    invoke-virtual {v1, v3, v6}, Lj$/time/format/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_37
    if-ne v3, v12, :cond_38

    .line 1776
    sget-object v3, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    invoke-virtual {v1, v3}, Lj$/time/format/s;->e(Lj$/time/format/B;)V

    goto/16 :goto_11

    :cond_38
    if-ne v3, v11, :cond_39

    .line 1778
    const-string v3, "+HH:MM:ss"

    invoke-virtual {v1, v3, v4}, Lj$/time/format/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1780
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    const/16 v8, 0x4f

    if-ne v7, v8, :cond_3d

    if-ne v3, v5, :cond_3b

    .line 1784
    sget-object v3, Lj$/time/format/B;->SHORT:Lj$/time/format/B;

    invoke-virtual {v1, v3}, Lj$/time/format/s;->e(Lj$/time/format/B;)V

    goto/16 :goto_11

    :cond_3b
    if-ne v3, v12, :cond_3c

    .line 1786
    sget-object v3, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    invoke-virtual {v1, v3}, Lj$/time/format/s;->e(Lj$/time/format/B;)V

    goto/16 :goto_11

    .line 1788
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern letter count must be 1 or 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/16 v8, 0x58

    if-ne v7, v8, :cond_40

    if-gt v3, v11, :cond_3f

    .line 1794
    sget-object v6, Lj$/time/format/k;->d:[Ljava/lang/String;

    if-ne v3, v5, :cond_3e

    move v7, v2

    goto :goto_e

    :cond_3e
    move v7, v5

    :goto_e
    add-int/2addr v3, v7

    aget-object v3, v6, v3

    invoke-virtual {v1, v3, v4}, Lj$/time/format/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1792
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    const/16 v4, 0x78

    if-ne v7, v4, :cond_45

    if-gt v3, v11, :cond_44

    if-ne v3, v5, :cond_41

    .line 1799
    const-string v6, "+00"

    goto :goto_f

    :cond_41
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_42

    goto :goto_f

    :cond_42
    const-string v6, "+00:00"

    .line 1800
    :goto_f
    sget-object v4, Lj$/time/format/k;->d:[Ljava/lang/String;

    if-ne v3, v5, :cond_43

    move v7, v2

    goto :goto_10

    :cond_43
    move v7, v5

    :goto_10
    add-int/2addr v3, v7

    aget-object v3, v4, v3

    invoke-virtual {v1, v3, v6}, Lj$/time/format/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1797
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/16 v4, 0x57

    if-ne v7, v4, :cond_47

    if-gt v3, v5, :cond_46

    .line 1806
    new-instance v6, Lj$/time/format/p;

    const/4 v11, 0x0

    move v9, v3

    move v10, v3

    move v8, v3

    .line 4848
    invoke-direct/range {v6 .. v11}, Lj$/time/format/p;-><init>(CIIII)V

    .line 1806
    invoke-virtual {v1, v6}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    goto :goto_11

    .line 1804
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    move v8, v3

    const/16 v3, 0x77

    if-ne v7, v3, :cond_49

    if-gt v8, v10, :cond_48

    .line 1812
    new-instance v6, Lj$/time/format/p;

    const/4 v11, 0x0

    const/4 v10, 0x2

    move v9, v8

    .line 4848
    invoke-direct/range {v6 .. v11}, Lj$/time/format/p;-><init>(CIIII)V

    .line 1812
    invoke-virtual {v1, v6}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    goto :goto_11

    .line 1810
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v3, 0x59

    if-ne v7, v3, :cond_4b

    if-ne v8, v10, :cond_4a

    .line 1816
    new-instance v6, Lj$/time/format/p;

    const/4 v11, 0x0

    const/4 v10, 0x2

    move v9, v8

    .line 4848
    invoke-direct/range {v6 .. v11}, Lj$/time/format/p;-><init>(CIIII)V

    .line 1816
    invoke-virtual {v1, v6}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    goto :goto_11

    .line 1818
    :cond_4a
    new-instance v6, Lj$/time/format/p;

    const/4 v11, 0x0

    const/16 v10, 0x13

    move v9, v8

    .line 4848
    invoke-direct/range {v6 .. v11}, Lj$/time/format/p;-><init>(CIIII)V

    .line 1818
    invoke-virtual {v1, v6}, Lj$/time/format/s;->i(Lj$/time/format/j;)V

    :goto_11
    add-int/lit8 v3, v13, -0x1

    goto/16 :goto_14

    .line 1821
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown pattern letter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1825
    :cond_4c
    const-string v6, "\'"

    const/16 v7, 0x27

    if-ne v4, v7, :cond_51

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .line 1828
    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_4e

    .line 1829
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_4d

    add-int/lit8 v8, v4, 0x1

    .line 1830
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4e

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_4e

    move v4, v8

    :cond_4d
    add-int/2addr v4, v5

    goto :goto_12

    .line 1837
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_50

    .line 1840
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1841
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1842
    invoke-virtual {v1, v7}, Lj$/time/format/s;->c(C)V

    goto :goto_13

    .line 1844
    :cond_4f
    const-string v7, "\'\'"

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj$/time/format/s;->d(Ljava/lang/String;)V

    :goto_13
    move v3, v4

    goto :goto_14

    .line 1838
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    const/16 v7, 0x5b

    if-ne v4, v7, :cond_52

    .line 1848
    invoke-virtual {v1}, Lj$/time/format/s;->n()V

    goto :goto_14

    :cond_52
    const/16 v7, 0x5d

    if-ne v4, v7, :cond_54

    .line 1851
    iget-object v4, v1, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget-object v4, v4, Lj$/time/format/s;->b:Lj$/time/format/s;

    if-eqz v4, :cond_53

    .line 1854
    invoke-virtual {v1}, Lj$/time/format/s;->m()V

    goto :goto_14

    .line 1852
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    const/16 v7, 0x7b

    if-eq v4, v7, :cond_55

    const/16 v7, 0x7d

    if-eq v4, v7, :cond_55

    const/16 v7, 0x23

    if-eq v4, v7, :cond_55

    .line 1859
    invoke-virtual {v1, v4}, Lj$/time/format/s;->c(C)V

    :goto_14
    add-int/2addr v3, v5

    goto/16 :goto_0

    .line 1857
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern includes reserved character: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2203
    :cond_56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2224
    sget-object v2, Lj$/time/format/z;->SMART:Lj$/time/format/z;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lj$/time/format/s;->p(Ljava/util/Locale;Lj$/time/format/z;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lj$/time/temporal/m;)Ljava/lang/String;
    .locals 2

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1791
    const-string v1, "temporal"

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1792
    const-string v1, "appendable"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1794
    :try_start_0
    new-instance v1, Lj$/time/format/u;

    invoke-direct {v1, p1, p0}, Lj$/time/format/u;-><init>(Lj$/time/temporal/m;Lj$/time/format/DateTimeFormatter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    iget-object p1, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/e;

    .line 1796
    :try_start_1
    invoke-virtual {p1, v1, v0}, Lj$/time/format/e;->h(Lj$/time/format/u;Ljava/lang/StringBuilder;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 1804
    new-instance v0, Lj$/time/b;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1804
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2126
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/e;

    invoke-virtual {v0}, Lj$/time/format/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2127
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
