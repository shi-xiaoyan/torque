#!/usr/bin/perl

use strict;
use warnings;

use FindBin;
use TestLibFinder;
use lib test_lib_loc();


# Test Modules
use CRI::Test;

use Torque::Job::Ctrl           qw(
                                    submitSleepJob
                                    runJobs
                                    delJobs
                                  );
use Torque::Util         qw( run_and_check_cmd 
                                    list2array        );
use Torque::Util::Qstat  qw( qstat_fx    );

# Test Description
plan('no_plan');
setDesc("qalter -m");

# Variables
my $m_cmd;
my $fx_cmd;
my $qstat;
my $qstat_fx;
my %qalter;
my $job_id;
my $mail_points;

# Submit the jobs
my $job_params = {
                   'user'       => $props->get_property('User.1'),
                   'torque_bin' => $props->get_property('Torque.Home.Dir') . '/bin/'
                 };

$job_id = submitSleepJob($job_params);

# Run a job
runJobs($job_id);

# Check qalter -m a
$mail_points = 'a';
$m_cmd       = "qalter -m $mail_points $job_id";
%qalter      = run_and_check_cmd($m_cmd);
 
$fx_cmd      = "qstat -f -x $job_id";

$qstat_fx    = qstat_fx({job_id => $job_id});
ok($qstat_fx->{ $job_id }{ 'Mail_Points' } eq $mail_points, "Checking if '$m_cmd' was successful");

# Check qalter -m b
$mail_points = 'b';
$m_cmd       = "qalter -m $mail_points $job_id";
%qalter      = run_and_check_cmd($m_cmd);

$fx_cmd      = "qstat -f -x $job_id";

$qstat_fx    = qstat_fx({job_id => $job_id});
ok($qstat_fx->{ $job_id }{ 'Mail_Points' } eq $mail_points, "Checking if '$m_cmd' was successful");

# Check qalter -m e
$mail_points = 'e';
$m_cmd       = "qalter -m $mail_points $job_id";
%qalter      = run_and_check_cmd($m_cmd);

$fx_cmd      = "qstat -f -x $job_id";

$qstat_fx    = qstat_fx({job_id => $job_id});
ok($qstat_fx->{ $job_id }{ 'Mail_Points' } eq $mail_points, "Checking if '$m_cmd' was successful");

# Check qalter -m abe
$mail_points = 'abe';
$m_cmd       = "qalter -m $mail_points $job_id";
%qalter      = run_and_check_cmd($m_cmd);

$fx_cmd      = "qstat -f -x $job_id";

$qstat_fx    = qstat_fx({job_id => $job_id});
ok($qstat_fx->{ $job_id }{ 'Mail_Points' } eq $mail_points, "Checking if '$m_cmd' was successful");


# Check qalter -m n
$mail_points = 'n';
$m_cmd     = "qalter -m $mail_points $job_id";
%qalter    = run_and_check_cmd($m_cmd);

$fx_cmd   = "qstat -f -x $job_id";

$qstat_fx = qstat_fx({job_id => $job_id});
ok($qstat_fx->{ $job_id }{ 'Mail_Points' } eq $mail_points, "Checking if '$m_cmd' was successful");
# Delete the jobs
delJobs($job_id);
