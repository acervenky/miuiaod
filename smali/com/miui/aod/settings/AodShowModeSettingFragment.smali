.class public Lcom/miui/aod/settings/AodShowModeSettingFragment;
.super Lmiui/preference/PreferenceFragment;
.source "AodShowModeSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAodEndPref:Lmiui/preference/ValuePreference;

.field private mAodShowPref:Landroid/preference/PreferenceCategory;

.field private mAodStartPref:Lmiui/preference/ValuePreference;

.field private mContext:Landroid/content/Context;

.field private mEndTime:I

.field private mOnTimeSetListener:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field private mShowStylePref:Landroid/preference/ListPreference;

.field private mStartTime:I

.field private mSummaryText:Landroid/view/View;

.field private mTimeFlag:Z

.field private mTimePickerDialog:Lmiui/app/TimePickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/aod/settings/AodShowModeSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment$1;-><init>(Lcom/miui/aod/settings/AodShowModeSettingFragment;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mOnTimeSetListener:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/settings/AodShowModeSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimeFlag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/aod/settings/AodShowModeSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    return p0
.end method

.method static synthetic access$102(Lcom/miui/aod/settings/AodShowModeSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/aod/settings/AodShowModeSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/settings/AodShowModeSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/settings/AodShowModeSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    return p0
.end method

.method static synthetic access$402(Lcom/miui/aod/settings/AodShowModeSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/aod/settings/AodShowModeSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    return-object p0
.end method

.method public static newInstance()Lmiui/preference/PreferenceFragment;
    .locals 1

    new-instance v0, Lcom/miui/aod/settings/AodShowModeSettingFragment;

    invoke-direct {v0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;-><init>()V

    return-object v0
.end method

.method private updateExtraInfoState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isAodEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_show_style"

    iget-object p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/aod/Utils;->getShowStyle(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_reset_aod_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "aod_mode_time"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "need_reset_aod_time"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateShowStyle(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->updateTouchMode(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->getShowStyle(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->translateShowStyleValue2Index(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mSummaryText:Landroid/view/View;

    if-nez v0, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    const v0, 0x7f030032

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f030033

    invoke-virtual {p1, v1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mSummaryText:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mSummaryText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const p1, 0x7f070001

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->addPreferencesFromResource(I)V

    const-string p1, "aod_mode_start_time"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiui/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "aod_mode_end_time"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiui/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "aod_show_style"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "aod_show"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    new-instance p1, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mOnTimeSetListener:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    iget v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    div-int/lit8 v3, v0, 0x3c

    iget v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    rem-int/lit8 v4, v0, 0x3c

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodEnable(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/widget/AODSettings;->getShowStyleEntries(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/widget/AODSettings;->getShowStyleValues(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_start"

    const/16 v2, 0x1a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_end"

    const/16 v2, 0x564

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    iget v4, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    const-string v1, "%02d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    iget p3, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    rem-int/lit8 p3, p3, 0x3c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->updateShowStyle(Z)V

    return-object p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->translateShowStyleValue2Index(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "need_reset_aod_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_show_style"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->updateShowStyle(Z)V

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aod_mode_start_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimeFlag:Z

    iget p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    iget v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    div-int/lit8 v0, v0, 0x3c

    iget v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mStartTime:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {p1, v0, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p1, v2, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    :goto_0
    iget-object p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_2

    :cond_1
    const-string v0, "aod_mode_end_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimeFlag:Z

    iget p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    iget v0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    div-int/lit8 v0, v0, 0x3c

    iget v2, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mEndTime:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {p1, v0, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p1, v2, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    :goto_1
    iget-object p0, p0, Lcom/miui/aod/settings/AodShowModeSettingFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/aod/settings/AodShowModeSettingFragment;->updateExtraInfoState()V

    return-void
.end method
