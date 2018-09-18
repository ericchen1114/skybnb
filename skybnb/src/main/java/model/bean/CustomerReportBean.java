package model.bean;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.io.filefilter.FalseFileFilter;

@Entity
@Table(name = "CUSTOMERREPORT")
public class CustomerReportBean {
	@Id
	private String reportNumber;
	private String memberReport;
	private String houseMember;
	private String reportTitle;
	private String reportDiscription;
	private Boolean reportStatus;

	@Override
	public String toString() {
		return "CustomerReportBean [reportNumber=" + reportNumber + ", memberReport=" + memberReport + ", houseMember="
				+ houseMember + ", reportTitle=" + reportTitle + ", reportDiscription=" + reportDiscription
				+ ", reportStatus=" + reportStatus + "]";
	}

	public String getReportNumber() {
		return reportNumber;
	}

	public void setReportNumber(String reportNumber) {
		this.reportNumber = reportNumber;
	}

	public String getMemberReport() {
		return memberReport;
	}

	public void setMemberReport(String memberReport) {
		this.memberReport = memberReport;
	}

	public String getHouseMember() {
		return houseMember;
	}

	public void setHouseMember(String houseMember) {
		this.houseMember = houseMember;
	}

	public String getReportTitle() {
		return reportTitle;
	}

	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}

	public String getReportDiscription() {
		return reportDiscription;
	}

	public void setReportDiscription(String reportDiscription) {
		this.reportDiscription = reportDiscription;
	}

	public Boolean getReportStatus() {
		return reportStatus;
	}

	public void setReportStatus(Boolean reportStatus) {
		this.reportStatus = reportStatus;
	}
}
