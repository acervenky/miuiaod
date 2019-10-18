.class public Lcom/xiaomi/stat/a/c;
.super Ljava/lang/Object;


# static fields
.field private static k:Lcom/xiaomi/stat/a/c;


# instance fields
.field private l:Lcom/xiaomi/stat/a/a;

.field private m:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/a/a;

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    const-string v1, "mistat_ev"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/stat/a/c;
    .locals 2

    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/stat/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/stat/a/c;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/c;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const-string p0, "mi_av"

    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_sv"

    const-string v0, "3.0.8"

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_ov"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_ob"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_n"

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_rd"

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_mf"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_m"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_os"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Lcom/xiaomi/stat/a/l;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, p2, p3, p4}, Lcom/xiaomi/stat/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/xiaomi/stat/a/b;->a()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    const/4 v9, 0x0

    :goto_0
    iget-object v6, v0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v6}, Lcom/xiaomi/stat/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "events"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "priority DESC, _id ASC"

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "e"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "eg"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "tp"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "ts"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "ps"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "sub"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "is_am"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v18, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v7

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v20, v8

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move/from16 v23, v11

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v24, v12

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v25, v13

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v26, v14

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    move v13, v14

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    if-eqz v18, :cond_2

    invoke-direct {v0, v1, v12, v7, v13}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x37

    add-int v16, v16, v12

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    add-int v16, v16, v12

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    add-int v16, v16, v12

    :cond_4
    move/from16 v12, v16

    const v13, 0x1e000

    if-le v12, v13, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v14, "e"

    invoke-virtual {v13, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "eg"

    invoke-virtual {v13, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "tp"

    invoke-virtual {v13, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ts"

    invoke-virtual {v13, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "eid"

    invoke-virtual {v13, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "ps"

    invoke-virtual {v13, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    goto :goto_3

    :cond_6
    move/from16 v16, v12

    :cond_7
    move/from16 v3, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v26

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v1, Lcom/xiaomi/stat/a/k;

    invoke-direct {v1, v15, v4, v0}, Lcom/xiaomi/stat/a/k;-><init>(Lorg/json/JSONArray;Ljava/util/ArrayList;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v1

    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    :goto_4
    :try_start_4
    const-string v1, "EventManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_5
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    move-object v6, v2

    :goto_6
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method private b(Lcom/xiaomi/stat/a/l;)V
    .locals 5

    invoke-direct {p0}, Lcom/xiaomi/stat/a/c;->d()V

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "e"

    iget-object v3, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eg"

    iget-object v3, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tp"

    iget-object v3, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ts"

    iget-wide v3, p1, Lcom/xiaomi/stat/a/l;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->c(Lcom/xiaomi/stat/a/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    invoke-direct {p0, v2}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/MiStatParams;)V

    :cond_0
    const-string p0, "ps"

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    invoke-virtual {v2}, Lcom/xiaomi/stat/H;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sub"

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->f:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_am"

    iget-boolean v2, p1, Lcom/xiaomi/stat/a/l;->g:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string p1, "mistat_basic"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p1, "priority"

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "events"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {p0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "events"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string p1, "EventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted events number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private c(Lcom/xiaomi/stat/a/l;)Z
    .locals 0

    iget-object p0, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    const-string p1, "profile_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {p0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 1

    new-instance v0, Lcom/xiaomi/stat/a/e;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/e;-><init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/stat/a/k;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public a(Lcom/xiaomi/stat/a/l;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/stat/a/d;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/d;-><init>(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    const-string p0, "EventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add event: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/stat/a/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/f;-><init>(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/xiaomi/stat/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/g;-><init>(Lcom/xiaomi/stat/a/c;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()J
    .locals 2

    new-instance v0, Lcom/xiaomi/stat/a/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/i;-><init>(Lcom/xiaomi/stat/a/c;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
